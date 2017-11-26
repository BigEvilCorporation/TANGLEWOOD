	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $45, $2b	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $80	; Set params for channel FM 5
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $31, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $31, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 2
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $31, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 2
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $31, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 2
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $31, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 2
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $31, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 2
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $31, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 2
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $31, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 2
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $31, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 2
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $31, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 2
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 1
	dc.b $31, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 2
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 1
	dc.b $31, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 1
	dc.b $31, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 1
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $01	; Set frequency '6913' (octave 3 semitone 769) for channel FM 1
	dc.b $31, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 1
	dc.b $31, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 1
	dc.b $31, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $00, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 1
	dc.b $31, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 1
	dc.b $31, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 1
	dc.b $31, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $07	; Set frequency '6919' (octave 3 semitone 775) for channel FM 1
	dc.b $31, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 1
	dc.b $31, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $09	; Set frequency '6921' (octave 3 semitone 777) for channel FM 1
	dc.b $31, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 1
	dc.b $31, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $07	; Set frequency '6919' (octave 3 semitone 775) for channel FM 1
	dc.b $31, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 1
	dc.b $31, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 1
	dc.b $31, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 1
	dc.b $31, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 1
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 1
	dc.b $31, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $01	; Set frequency '6913' (octave 3 semitone 769) for channel FM 1
	dc.b $31, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 1
	dc.b $31, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 1
	dc.b $31, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 1
	dc.b $31, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 1
	dc.b $31, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $00, Row 12; 
	dc.b $41, $2b	; Set instrument for channel FM 2
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 16; 
	dc.b $40, $2b	; Set instrument for channel FM 1
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $00, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $00, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $00, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 32; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $00, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $00, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $00, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $00, Row 56; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $c0	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $00, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $00, Row 60; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $00, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $80	; Set params for channel FM 5
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $01, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $01, Row 12; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 16; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $01, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $01, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $01, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $01, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $01, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 32; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $01, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $01, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $01, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $01, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $01, Row 56; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $c0	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $01, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $01, Row 60; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $01, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $02, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $02, Row 12; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 16; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $02, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 32; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $02, Row 36; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $c0	; Set params for channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $02, Row 56; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 60; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $03, Row 12; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 16; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $03, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 32; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $03, Row 36; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $f4, $c0	; Set params for channel FM 4
	dc.b $30, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $03, Row 56; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 60; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $04, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $80	; Set params for channel FM 5
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $67	; Set frequency '7271' (octave 3 semitone 1127) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $66	; Set frequency '7270' (octave 3 semitone 1126) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $65	; Set frequency '7269' (octave 3 semitone 1125) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1c, $63	; Set frequency '7267' (octave 3 semitone 1123) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $04, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $04, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $04, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $04, Row 56; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $c0	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $04, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $80	; Set params for channel FM 5
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $05, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $05, Row 12; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $05, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 16; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $05, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $05, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $05, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 32; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $05, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $05, Row 56; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f1, $c0	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $05, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $06, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $06, Row 12; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 16; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $06, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 32; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $c0	; Set params for channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $06, Row 56; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 16; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $07, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $c0	; Set params for channel FM 5
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 32; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $42, $2d	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $f4, $c0	; Set params for channel FM 4
	dc.b $30, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 50; 
	dc.b $42, $2c	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 1
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
; Pattern $07, Row 56; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $f1, $40	; Set params for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 1
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 60; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f0, $80	; Set params for channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

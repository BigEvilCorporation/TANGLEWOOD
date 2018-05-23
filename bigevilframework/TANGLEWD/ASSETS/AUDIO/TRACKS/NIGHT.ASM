	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $14	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $50	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8d	; Note F#4 on channel FM 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $40	; Delay
	dc.b $41, $13	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $84	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8b	; Note F-4 on channel FM 2
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $40	; Delay
	dc.b $42, $14	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $f2, $d0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $85	; Note D-4 on channel FM 3
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $40	; Delay
	dc.b $40, $15	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $40	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $87	; Note D#4 on channel FM 1
	dc.b $41, $15	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $80	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $75	; Note A#3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $15	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $15	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $91	; Note G#4 on channel FM 5
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $34	; Delay
	dc.b $34, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 4
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $c2	; Set frequency '9154' (octave 4 semitone 962) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $c1	; Set frequency '9153' (octave 4 semitone 961) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 4
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $bd	; Set frequency '9149' (octave 4 semitone 957) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $bb	; Set frequency '9147' (octave 4 semitone 955) for channel FM 4
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ba	; Set frequency '9146' (octave 4 semitone 954) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b9	; Set frequency '9145' (octave 4 semitone 953) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b8	; Set frequency '9144' (octave 4 semitone 952) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b7	; Set frequency '9143' (octave 4 semitone 951) for channel FM 4
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b6	; Set frequency '9142' (octave 4 semitone 950) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b5	; Set frequency '9141' (octave 4 semitone 949) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b4	; Set frequency '9140' (octave 4 semitone 948) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b3	; Set frequency '9139' (octave 4 semitone 947) for channel FM 4
; Pattern $00, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b2	; Set frequency '9138' (octave 4 semitone 946) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b1	; Set frequency '9137' (octave 4 semitone 945) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b0	; Set frequency '9136' (octave 4 semitone 944) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $af	; Set frequency '9135' (octave 4 semitone 943) for channel FM 4
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ae	; Set frequency '9134' (octave 4 semitone 942) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ad	; Set frequency '9133' (octave 4 semitone 941) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ac	; Set frequency '9132' (octave 4 semitone 940) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ab	; Set frequency '9131' (octave 4 semitone 939) for channel FM 4
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $aa	; Set frequency '9130' (octave 4 semitone 938) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a9	; Set frequency '9129' (octave 4 semitone 937) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a8	; Set frequency '9128' (octave 4 semitone 936) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a7	; Set frequency '9127' (octave 4 semitone 935) for channel FM 4
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a6	; Set frequency '9126' (octave 4 semitone 934) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a5	; Set frequency '9125' (octave 4 semitone 933) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a4	; Set frequency '9124' (octave 4 semitone 932) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a3	; Set frequency '9123' (octave 4 semitone 931) for channel FM 4
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a2	; Set frequency '9122' (octave 4 semitone 930) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a1	; Set frequency '9121' (octave 4 semitone 929) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a0	; Set frequency '9120' (octave 4 semitone 928) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9f	; Set frequency '9119' (octave 4 semitone 927) for channel FM 4
; Pattern $00, Row 70; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9d	; Set frequency '9117' (octave 4 semitone 925) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9c	; Set frequency '9116' (octave 4 semitone 924) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9b	; Set frequency '9115' (octave 4 semitone 923) for channel FM 4
; Pattern $00, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9a	; Set frequency '9114' (octave 4 semitone 922) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $99	; Set frequency '9113' (octave 4 semitone 921) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $98	; Set frequency '9112' (octave 4 semitone 920) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 4
; Pattern $00, Row 72; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $96	; Set frequency '9110' (octave 4 semitone 918) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $95	; Set frequency '9109' (octave 4 semitone 917) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $93	; Set frequency '9107' (octave 4 semitone 915) for channel FM 4
; Pattern $00, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $92	; Set frequency '9106' (octave 4 semitone 914) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $91	; Set frequency '9105' (octave 4 semitone 913) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $90	; Set frequency '9104' (octave 4 semitone 912) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 4
; Pattern $00, Row 74; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8e	; Set frequency '9102' (octave 4 semitone 910) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 4
; Pattern $00, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $89	; Set frequency '9097' (octave 4 semitone 905) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 4
; Pattern $00, Row 76; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $85	; Set frequency '9093' (octave 4 semitone 901) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $83	; Set frequency '9091' (octave 4 semitone 899) for channel FM 4
; Pattern $00, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $81	; Set frequency '9089' (octave 4 semitone 897) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7f	; Set frequency '9087' (octave 4 semitone 895) for channel FM 4
; Pattern $00, Row 78; 
; Pattern $00, Row 79; 
; Pattern $00, Row 80; 
	dc.b $fe, $08	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
; Pattern $00, Row 81; 
; Pattern $00, Row 82; 
; Pattern $00, Row 83; 
; Pattern $00, Row 84; 
; Pattern $00, Row 85; 
; Pattern $00, Row 86; 
; Pattern $00, Row 87; 
; Pattern $00, Row 88; 
; Pattern $00, Row 89; 
; Pattern $00, Row 90; 
; Pattern $00, Row 91; 
; Pattern $00, Row 92; 
; Pattern $00, Row 93; 
; Pattern $00, Row 94; 
; Pattern $00, Row 95; 
; Pattern $00, Row 96; 
	dc.b $fe, $44	; Delay
	dc.b $30, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 1
	dc.b $31, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 2
	dc.b $32, $22, $d3	; Set frequency '8915' (octave 4 semitone 723) for channel FM 3
	dc.b $34, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 4
	dc.b $35, $23, $fc	; Set frequency '9212' (octave 4 semitone 1020) for channel FM 5
; Pattern $00, Row 97; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $fb	; Set frequency '8955' (octave 4 semitone 763) for channel FM 1
	dc.b $31, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 2
	dc.b $32, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 3
	dc.b $34, $23, $81	; Set frequency '9089' (octave 4 semitone 897) for channel FM 4
	dc.b $35, $23, $fb	; Set frequency '9211' (octave 4 semitone 1019) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 1
	dc.b $31, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 2
	dc.b $32, $22, $d5	; Set frequency '8917' (octave 4 semitone 725) for channel FM 3
	dc.b $34, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 4
	dc.b $35, $23, $fa	; Set frequency '9210' (octave 4 semitone 1018) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f9	; Set frequency '8953' (octave 4 semitone 761) for channel FM 1
	dc.b $31, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 2
	dc.b $32, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 3
	dc.b $34, $23, $83	; Set frequency '9091' (octave 4 semitone 899) for channel FM 4
	dc.b $35, $23, $f9	; Set frequency '9209' (octave 4 semitone 1017) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 1
	dc.b $31, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 2
	dc.b $32, $22, $d7	; Set frequency '8919' (octave 4 semitone 727) for channel FM 3
	dc.b $34, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 4
	dc.b $35, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 5
; Pattern $00, Row 98; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f7	; Set frequency '8951' (octave 4 semitone 759) for channel FM 1
	dc.b $31, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 2
	dc.b $32, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 3
	dc.b $34, $23, $85	; Set frequency '9093' (octave 4 semitone 901) for channel FM 4
	dc.b $35, $23, $f7	; Set frequency '9207' (octave 4 semitone 1015) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 1
	dc.b $31, $1c, $81	; Set frequency '7297' (octave 3 semitone 1153) for channel FM 2
	dc.b $32, $22, $d9	; Set frequency '8921' (octave 4 semitone 729) for channel FM 3
	dc.b $34, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 4
	dc.b $35, $23, $f6	; Set frequency '9206' (octave 4 semitone 1014) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f5	; Set frequency '8949' (octave 4 semitone 757) for channel FM 1
	dc.b $31, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 2
	dc.b $32, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 3
	dc.b $34, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 4
	dc.b $35, $23, $f5	; Set frequency '9205' (octave 4 semitone 1013) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 1
	dc.b $31, $1c, $83	; Set frequency '7299' (octave 3 semitone 1155) for channel FM 2
	dc.b $32, $22, $db	; Set frequency '8923' (octave 4 semitone 731) for channel FM 3
	dc.b $34, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 4
	dc.b $35, $23, $f4	; Set frequency '9204' (octave 4 semitone 1012) for channel FM 5
; Pattern $00, Row 99; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f3	; Set frequency '8947' (octave 4 semitone 755) for channel FM 1
	dc.b $31, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 2
	dc.b $32, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 3
	dc.b $34, $23, $89	; Set frequency '9097' (octave 4 semitone 905) for channel FM 4
	dc.b $35, $23, $f3	; Set frequency '9203' (octave 4 semitone 1011) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 1
	dc.b $31, $1c, $85	; Set frequency '7301' (octave 3 semitone 1157) for channel FM 2
	dc.b $32, $22, $dd	; Set frequency '8925' (octave 4 semitone 733) for channel FM 3
	dc.b $34, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 4
	dc.b $35, $23, $f2	; Set frequency '9202' (octave 4 semitone 1010) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f1	; Set frequency '8945' (octave 4 semitone 753) for channel FM 1
	dc.b $31, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 2
	dc.b $32, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 3
	dc.b $34, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 4
	dc.b $35, $23, $f1	; Set frequency '9201' (octave 4 semitone 1009) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 1
	dc.b $31, $1c, $87	; Set frequency '7303' (octave 3 semitone 1159) for channel FM 2
	dc.b $32, $22, $df	; Set frequency '8927' (octave 4 semitone 735) for channel FM 3
	dc.b $34, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 4
	dc.b $35, $23, $f0	; Set frequency '9200' (octave 4 semitone 1008) for channel FM 5
; Pattern $00, Row 100; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ef	; Set frequency '8943' (octave 4 semitone 751) for channel FM 1
	dc.b $31, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 2
	dc.b $32, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 3
	dc.b $34, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 4
	dc.b $35, $23, $ef	; Set frequency '9199' (octave 4 semitone 1007) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 1
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $22, $e1	; Set frequency '8929' (octave 4 semitone 737) for channel FM 3
	dc.b $34, $23, $8e	; Set frequency '9102' (octave 4 semitone 910) for channel FM 4
	dc.b $35, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ed	; Set frequency '8941' (octave 4 semitone 749) for channel FM 1
	dc.b $31, $1c, $8a	; Set frequency '7306' (octave 3 semitone 1162) for channel FM 2
	dc.b $32, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 3
	dc.b $34, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 4
	dc.b $35, $23, $ed	; Set frequency '9197' (octave 4 semitone 1005) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 1
	dc.b $31, $1c, $8b	; Set frequency '7307' (octave 3 semitone 1163) for channel FM 2
	dc.b $32, $22, $e3	; Set frequency '8931' (octave 4 semitone 739) for channel FM 3
	dc.b $34, $23, $90	; Set frequency '9104' (octave 4 semitone 912) for channel FM 4
	dc.b $35, $23, $ec	; Set frequency '9196' (octave 4 semitone 1004) for channel FM 5
; Pattern $00, Row 101; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $eb	; Set frequency '8939' (octave 4 semitone 747) for channel FM 1
	dc.b $31, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 2
	dc.b $32, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 3
	dc.b $34, $23, $91	; Set frequency '9105' (octave 4 semitone 913) for channel FM 4
	dc.b $35, $23, $eb	; Set frequency '9195' (octave 4 semitone 1003) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 1
	dc.b $31, $1c, $8d	; Set frequency '7309' (octave 3 semitone 1165) for channel FM 2
	dc.b $32, $22, $e5	; Set frequency '8933' (octave 4 semitone 741) for channel FM 3
	dc.b $34, $23, $92	; Set frequency '9106' (octave 4 semitone 914) for channel FM 4
	dc.b $35, $23, $ea	; Set frequency '9194' (octave 4 semitone 1002) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e9	; Set frequency '8937' (octave 4 semitone 745) for channel FM 1
	dc.b $31, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 2
	dc.b $32, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 3
	dc.b $34, $23, $93	; Set frequency '9107' (octave 4 semitone 915) for channel FM 4
	dc.b $35, $23, $e9	; Set frequency '9193' (octave 4 semitone 1001) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 1
	dc.b $31, $1c, $8f	; Set frequency '7311' (octave 3 semitone 1167) for channel FM 2
	dc.b $32, $22, $e7	; Set frequency '8935' (octave 4 semitone 743) for channel FM 3
	dc.b $34, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 4
	dc.b $35, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 5
; Pattern $00, Row 102; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e7	; Set frequency '8935' (octave 4 semitone 743) for channel FM 1
	dc.b $31, $1c, $90	; Set frequency '7312' (octave 3 semitone 1168) for channel FM 2
	dc.b $32, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 3
	dc.b $34, $23, $95	; Set frequency '9109' (octave 4 semitone 917) for channel FM 4
	dc.b $35, $23, $e7	; Set frequency '9191' (octave 4 semitone 999) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 1
	dc.b $31, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 2
	dc.b $32, $22, $e9	; Set frequency '8937' (octave 4 semitone 745) for channel FM 3
	dc.b $34, $23, $96	; Set frequency '9110' (octave 4 semitone 918) for channel FM 4
	dc.b $35, $23, $e6	; Set frequency '9190' (octave 4 semitone 998) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e5	; Set frequency '8933' (octave 4 semitone 741) for channel FM 1
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 3
	dc.b $34, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 4
	dc.b $35, $23, $e5	; Set frequency '9189' (octave 4 semitone 997) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 1
	dc.b $31, $1c, $93	; Set frequency '7315' (octave 3 semitone 1171) for channel FM 2
	dc.b $32, $22, $eb	; Set frequency '8939' (octave 4 semitone 747) for channel FM 3
	dc.b $34, $23, $98	; Set frequency '9112' (octave 4 semitone 920) for channel FM 4
	dc.b $35, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 5
; Pattern $00, Row 103; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e3	; Set frequency '8931' (octave 4 semitone 739) for channel FM 1
	dc.b $31, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 2
	dc.b $32, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 3
	dc.b $34, $23, $99	; Set frequency '9113' (octave 4 semitone 921) for channel FM 4
	dc.b $35, $23, $e3	; Set frequency '9187' (octave 4 semitone 995) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 1
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $32, $22, $ed	; Set frequency '8941' (octave 4 semitone 749) for channel FM 3
	dc.b $34, $23, $9a	; Set frequency '9114' (octave 4 semitone 922) for channel FM 4
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e1	; Set frequency '8929' (octave 4 semitone 737) for channel FM 1
	dc.b $31, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 2
	dc.b $32, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 3
	dc.b $34, $23, $9b	; Set frequency '9115' (octave 4 semitone 923) for channel FM 4
	dc.b $35, $23, $e1	; Set frequency '9185' (octave 4 semitone 993) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 1
	dc.b $31, $1c, $97	; Set frequency '7319' (octave 3 semitone 1175) for channel FM 2
	dc.b $32, $22, $ef	; Set frequency '8943' (octave 4 semitone 751) for channel FM 3
	dc.b $34, $23, $9c	; Set frequency '9116' (octave 4 semitone 924) for channel FM 4
	dc.b $35, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 5
; Pattern $00, Row 104; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $df	; Set frequency '8927' (octave 4 semitone 735) for channel FM 1
	dc.b $31, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 2
	dc.b $32, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 3
	dc.b $34, $23, $9d	; Set frequency '9117' (octave 4 semitone 925) for channel FM 4
	dc.b $35, $23, $df	; Set frequency '9183' (octave 4 semitone 991) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 1
	dc.b $31, $1c, $99	; Set frequency '7321' (octave 3 semitone 1177) for channel FM 2
	dc.b $32, $22, $f1	; Set frequency '8945' (octave 4 semitone 753) for channel FM 3
	dc.b $34, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 4
	dc.b $35, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $dd	; Set frequency '8925' (octave 4 semitone 733) for channel FM 1
	dc.b $31, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 2
	dc.b $32, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 3
	dc.b $34, $23, $9f	; Set frequency '9119' (octave 4 semitone 927) for channel FM 4
	dc.b $35, $23, $dd	; Set frequency '9181' (octave 4 semitone 989) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 1
	dc.b $31, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 2
	dc.b $32, $22, $f3	; Set frequency '8947' (octave 4 semitone 755) for channel FM 3
	dc.b $34, $23, $a0	; Set frequency '9120' (octave 4 semitone 928) for channel FM 4
	dc.b $35, $23, $dc	; Set frequency '9180' (octave 4 semitone 988) for channel FM 5
; Pattern $00, Row 105; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $db	; Set frequency '8923' (octave 4 semitone 731) for channel FM 1
	dc.b $31, $1c, $9c	; Set frequency '7324' (octave 3 semitone 1180) for channel FM 2
	dc.b $32, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 3
	dc.b $34, $23, $a1	; Set frequency '9121' (octave 4 semitone 929) for channel FM 4
	dc.b $35, $23, $db	; Set frequency '9179' (octave 4 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 1
	dc.b $31, $1c, $9d	; Set frequency '7325' (octave 3 semitone 1181) for channel FM 2
	dc.b $32, $22, $f5	; Set frequency '8949' (octave 4 semitone 757) for channel FM 3
	dc.b $34, $23, $a2	; Set frequency '9122' (octave 4 semitone 930) for channel FM 4
	dc.b $35, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d9	; Set frequency '8921' (octave 4 semitone 729) for channel FM 1
	dc.b $31, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 2
	dc.b $32, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 3
	dc.b $34, $23, $a3	; Set frequency '9123' (octave 4 semitone 931) for channel FM 4
	dc.b $35, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 1
	dc.b $31, $1c, $9f	; Set frequency '7327' (octave 3 semitone 1183) for channel FM 2
	dc.b $32, $22, $f7	; Set frequency '8951' (octave 4 semitone 759) for channel FM 3
	dc.b $34, $23, $a4	; Set frequency '9124' (octave 4 semitone 932) for channel FM 4
	dc.b $35, $23, $d8	; Set frequency '9176' (octave 4 semitone 984) for channel FM 5
; Pattern $00, Row 106; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d7	; Set frequency '8919' (octave 4 semitone 727) for channel FM 1
	dc.b $31, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 2
	dc.b $32, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 3
	dc.b $34, $23, $a5	; Set frequency '9125' (octave 4 semitone 933) for channel FM 4
	dc.b $35, $23, $d7	; Set frequency '9175' (octave 4 semitone 983) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 1
	dc.b $31, $1c, $a1	; Set frequency '7329' (octave 3 semitone 1185) for channel FM 2
	dc.b $32, $22, $f9	; Set frequency '8953' (octave 4 semitone 761) for channel FM 3
	dc.b $34, $23, $a6	; Set frequency '9126' (octave 4 semitone 934) for channel FM 4
	dc.b $35, $23, $d6	; Set frequency '9174' (octave 4 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d5	; Set frequency '8917' (octave 4 semitone 725) for channel FM 1
	dc.b $31, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 2
	dc.b $32, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 3
	dc.b $34, $23, $a7	; Set frequency '9127' (octave 4 semitone 935) for channel FM 4
	dc.b $35, $23, $d5	; Set frequency '9173' (octave 4 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 1
	dc.b $31, $1c, $a3	; Set frequency '7331' (octave 3 semitone 1187) for channel FM 2
	dc.b $32, $22, $fb	; Set frequency '8955' (octave 4 semitone 763) for channel FM 3
	dc.b $34, $23, $a8	; Set frequency '9128' (octave 4 semitone 936) for channel FM 4
	dc.b $35, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 5
; Pattern $00, Row 107; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d3	; Set frequency '8915' (octave 4 semitone 723) for channel FM 1
	dc.b $31, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 2
	dc.b $32, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 3
	dc.b $34, $23, $a9	; Set frequency '9129' (octave 4 semitone 937) for channel FM 4
	dc.b $35, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d2	; Set frequency '8914' (octave 4 semitone 722) for channel FM 1
	dc.b $31, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 2
	dc.b $32, $22, $fd	; Set frequency '8957' (octave 4 semitone 765) for channel FM 3
	dc.b $34, $23, $aa	; Set frequency '9130' (octave 4 semitone 938) for channel FM 4
	dc.b $35, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d1	; Set frequency '8913' (octave 4 semitone 721) for channel FM 1
	dc.b $31, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 2
	dc.b $32, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 3
	dc.b $34, $23, $ab	; Set frequency '9131' (octave 4 semitone 939) for channel FM 4
	dc.b $35, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d0	; Set frequency '8912' (octave 4 semitone 720) for channel FM 1
	dc.b $31, $1c, $a7	; Set frequency '7335' (octave 3 semitone 1191) for channel FM 2
	dc.b $32, $22, $ff	; Set frequency '8959' (octave 4 semitone 767) for channel FM 3
	dc.b $34, $23, $ac	; Set frequency '9132' (octave 4 semitone 940) for channel FM 4
	dc.b $35, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 5
; Pattern $00, Row 108; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cf	; Set frequency '8911' (octave 4 semitone 719) for channel FM 1
	dc.b $31, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 2
	dc.b $32, $23, $00	; Set frequency '8960' (octave 4 semitone 768) for channel FM 3
	dc.b $34, $23, $ad	; Set frequency '9133' (octave 4 semitone 941) for channel FM 4
	dc.b $35, $23, $cf	; Set frequency '9167' (octave 4 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 1
	dc.b $31, $1c, $a9	; Set frequency '7337' (octave 3 semitone 1193) for channel FM 2
	dc.b $32, $23, $01	; Set frequency '8961' (octave 4 semitone 769) for channel FM 3
	dc.b $34, $23, $ae	; Set frequency '9134' (octave 4 semitone 942) for channel FM 4
	dc.b $35, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cd	; Set frequency '8909' (octave 4 semitone 717) for channel FM 1
	dc.b $31, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 2
	dc.b $32, $23, $02	; Set frequency '8962' (octave 4 semitone 770) for channel FM 3
	dc.b $34, $23, $af	; Set frequency '9135' (octave 4 semitone 943) for channel FM 4
	dc.b $35, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 1
	dc.b $31, $1c, $ab	; Set frequency '7339' (octave 3 semitone 1195) for channel FM 2
	dc.b $32, $23, $03	; Set frequency '8963' (octave 4 semitone 771) for channel FM 3
	dc.b $34, $23, $b0	; Set frequency '9136' (octave 4 semitone 944) for channel FM 4
	dc.b $35, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 5
; Pattern $00, Row 109; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cb	; Set frequency '8907' (octave 4 semitone 715) for channel FM 1
	dc.b $31, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 2
	dc.b $32, $23, $04	; Set frequency '8964' (octave 4 semitone 772) for channel FM 3
	dc.b $34, $23, $b1	; Set frequency '9137' (octave 4 semitone 945) for channel FM 4
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ca	; Set frequency '8906' (octave 4 semitone 714) for channel FM 1
	dc.b $31, $1c, $ad	; Set frequency '7341' (octave 3 semitone 1197) for channel FM 2
	dc.b $32, $23, $05	; Set frequency '8965' (octave 4 semitone 773) for channel FM 3
	dc.b $34, $23, $b2	; Set frequency '9138' (octave 4 semitone 946) for channel FM 4
	dc.b $35, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c9	; Set frequency '8905' (octave 4 semitone 713) for channel FM 1
	dc.b $31, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 2
	dc.b $32, $23, $06	; Set frequency '8966' (octave 4 semitone 774) for channel FM 3
	dc.b $34, $23, $b3	; Set frequency '9139' (octave 4 semitone 947) for channel FM 4
	dc.b $35, $23, $c9	; Set frequency '9161' (octave 4 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 1
	dc.b $31, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 2
	dc.b $32, $23, $07	; Set frequency '8967' (octave 4 semitone 775) for channel FM 3
	dc.b $34, $23, $b4	; Set frequency '9140' (octave 4 semitone 948) for channel FM 4
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
; Pattern $00, Row 110; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c7	; Set frequency '8903' (octave 4 semitone 711) for channel FM 1
	dc.b $31, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 2
	dc.b $32, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 3
	dc.b $34, $23, $b5	; Set frequency '9141' (octave 4 semitone 949) for channel FM 4
	dc.b $35, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 1
	dc.b $31, $1c, $b1	; Set frequency '7345' (octave 3 semitone 1201) for channel FM 2
	dc.b $32, $23, $09	; Set frequency '8969' (octave 4 semitone 777) for channel FM 3
	dc.b $34, $23, $b6	; Set frequency '9142' (octave 4 semitone 950) for channel FM 4
	dc.b $35, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c5	; Set frequency '8901' (octave 4 semitone 709) for channel FM 1
	dc.b $31, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 2
	dc.b $32, $23, $0a	; Set frequency '8970' (octave 4 semitone 778) for channel FM 3
	dc.b $34, $23, $b7	; Set frequency '9143' (octave 4 semitone 951) for channel FM 4
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 1
	dc.b $31, $1c, $b3	; Set frequency '7347' (octave 3 semitone 1203) for channel FM 2
	dc.b $32, $23, $0b	; Set frequency '8971' (octave 4 semitone 779) for channel FM 3
	dc.b $34, $23, $b8	; Set frequency '9144' (octave 4 semitone 952) for channel FM 4
	dc.b $35, $23, $c4	; Set frequency '9156' (octave 4 semitone 964) for channel FM 5
; Pattern $00, Row 111; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c3	; Set frequency '8899' (octave 4 semitone 707) for channel FM 1
	dc.b $31, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 2
	dc.b $32, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 3
	dc.b $34, $23, $b9	; Set frequency '9145' (octave 4 semitone 953) for channel FM 4
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 1
	dc.b $31, $1c, $b5	; Set frequency '7349' (octave 3 semitone 1205) for channel FM 2
	dc.b $32, $23, $0d	; Set frequency '8973' (octave 4 semitone 781) for channel FM 3
	dc.b $34, $23, $ba	; Set frequency '9146' (octave 4 semitone 954) for channel FM 4
	dc.b $35, $23, $c2	; Set frequency '9154' (octave 4 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c1	; Set frequency '8897' (octave 4 semitone 705) for channel FM 1
	dc.b $31, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 2
	dc.b $32, $23, $0e	; Set frequency '8974' (octave 4 semitone 782) for channel FM 3
	dc.b $34, $23, $bb	; Set frequency '9147' (octave 4 semitone 955) for channel FM 4
	dc.b $35, $23, $c1	; Set frequency '9153' (octave 4 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 1
	dc.b $31, $1c, $b7	; Set frequency '7351' (octave 3 semitone 1207) for channel FM 2
	dc.b $32, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 3
	dc.b $34, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 4
	dc.b $35, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 5
; Pattern $00, Row 112; 
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $00, Row 113; 
; Pattern $00, Row 114; 
; Pattern $00, Row 115; 
; Pattern $00, Row 116; 
; Pattern $00, Row 117; 
; Pattern $00, Row 118; 
; Pattern $00, Row 119; 
; Pattern $00, Row 120; 
; Pattern $00, Row 121; 
; Pattern $00, Row 122; 
; Pattern $00, Row 123; 
; Pattern $00, Row 124; 
; Pattern $00, Row 125; 
; Pattern $00, Row 126; 
; Pattern $00, Row 127; 
; Pattern $00, Row 128; 
; Pattern $00, Row 129; 
; Pattern $00, Row 130; 
; Pattern $00, Row 131; 
; Pattern $00, Row 132; 
; Pattern $00, Row 133; 
; Pattern $00, Row 134; 
; Pattern $00, Row 135; 
; Pattern $00, Row 136; 
; Pattern $00, Row 137; 
; Pattern $00, Row 138; 
; Pattern $00, Row 139; 
; Pattern $00, Row 140; 
; Pattern $00, Row 141; 
; Pattern $00, Row 142; 
; Pattern $00, Row 143; 
; Pattern $00, Row 144; 
; Pattern $00, Row 145; 
; Pattern $00, Row 146; 
; Pattern $00, Row 147; 
; Pattern $00, Row 148; 
; Pattern $00, Row 149; 
; Pattern $00, Row 150; 
; Pattern $00, Row 151; 
	dc.b $fe, $a0	; Delay
	dc.b $ff	; The End

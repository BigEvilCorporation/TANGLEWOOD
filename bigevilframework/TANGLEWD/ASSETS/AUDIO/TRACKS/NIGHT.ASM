	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $14	; Set instrument for channel FM 1
	dc.b $00, $8d	; Note F#4 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
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
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
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
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $f2, $c0	; Set params for channel FM 3
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
	dc.b $00, $87	; Note D#4 on channel FM 1
	dc.b $41, $15	; Set instrument for channel FM 2
	dc.b $01, $75	; Note A#3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $44, $15	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $f4, $c0	; Set params for channel FM 4
	dc.b $45, $15	; Set instrument for channel FM 5
	dc.b $05, $91	; Note G#4 on channel FM 5
	dc.b $f5, $40	; Set params for channel FM 5
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
	dc.b $34, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 4
	dc.b $35, $23, $fc	; Set frequency '9212' (octave 4 semitone 1020) for channel FM 5
; Pattern $00, Row 97; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $fb	; Set frequency '8955' (octave 4 semitone 763) for channel FM 1
	dc.b $31, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 2
	dc.b $32, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 3
	dc.b $34, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 4
	dc.b $35, $23, $fb	; Set frequency '9211' (octave 4 semitone 1019) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 1
	dc.b $31, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 2
	dc.b $32, $22, $d5	; Set frequency '8917' (octave 4 semitone 725) for channel FM 3
	dc.b $34, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 4
	dc.b $35, $23, $fa	; Set frequency '9210' (octave 4 semitone 1018) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f9	; Set frequency '8953' (octave 4 semitone 761) for channel FM 1
	dc.b $31, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 2
	dc.b $32, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 3
	dc.b $34, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 4
	dc.b $35, $23, $f9	; Set frequency '9209' (octave 4 semitone 1017) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 1
	dc.b $31, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 2
	dc.b $32, $22, $d7	; Set frequency '8919' (octave 4 semitone 727) for channel FM 3
	dc.b $34, $23, $c9	; Set frequency '9161' (octave 4 semitone 969) for channel FM 4
	dc.b $35, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 5
; Pattern $00, Row 98; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f7	; Set frequency '8951' (octave 4 semitone 759) for channel FM 1
	dc.b $31, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 2
	dc.b $32, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 3
	dc.b $34, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 4
	dc.b $35, $23, $f7	; Set frequency '9207' (octave 4 semitone 1015) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 1
	dc.b $31, $1c, $81	; Set frequency '7297' (octave 3 semitone 1153) for channel FM 2
	dc.b $32, $22, $d9	; Set frequency '8921' (octave 4 semitone 729) for channel FM 3
	dc.b $34, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 4
	dc.b $35, $23, $f6	; Set frequency '9206' (octave 4 semitone 1014) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f5	; Set frequency '8949' (octave 4 semitone 757) for channel FM 1
	dc.b $31, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 2
	dc.b $32, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 3
	dc.b $34, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 4
	dc.b $35, $23, $f5	; Set frequency '9205' (octave 4 semitone 1013) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 1
	dc.b $31, $1c, $83	; Set frequency '7299' (octave 3 semitone 1155) for channel FM 2
	dc.b $32, $22, $db	; Set frequency '8923' (octave 4 semitone 731) for channel FM 3
	dc.b $34, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 4
	dc.b $35, $23, $f4	; Set frequency '9204' (octave 4 semitone 1012) for channel FM 5
; Pattern $00, Row 99; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f3	; Set frequency '8947' (octave 4 semitone 755) for channel FM 1
	dc.b $31, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 2
	dc.b $32, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 3
	dc.b $34, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 4
	dc.b $35, $23, $f3	; Set frequency '9203' (octave 4 semitone 1011) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 1
	dc.b $31, $1c, $85	; Set frequency '7301' (octave 3 semitone 1157) for channel FM 2
	dc.b $32, $22, $dd	; Set frequency '8925' (octave 4 semitone 733) for channel FM 3
	dc.b $34, $23, $cf	; Set frequency '9167' (octave 4 semitone 975) for channel FM 4
	dc.b $35, $23, $f2	; Set frequency '9202' (octave 4 semitone 1010) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f1	; Set frequency '8945' (octave 4 semitone 753) for channel FM 1
	dc.b $31, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 2
	dc.b $32, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 3
	dc.b $34, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 4
	dc.b $35, $23, $f1	; Set frequency '9201' (octave 4 semitone 1009) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 1
	dc.b $31, $1c, $87	; Set frequency '7303' (octave 3 semitone 1159) for channel FM 2
	dc.b $32, $22, $df	; Set frequency '8927' (octave 4 semitone 735) for channel FM 3
	dc.b $34, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 4
	dc.b $35, $23, $f0	; Set frequency '9200' (octave 4 semitone 1008) for channel FM 5
; Pattern $00, Row 100; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ef	; Set frequency '8943' (octave 4 semitone 751) for channel FM 1
	dc.b $31, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 2
	dc.b $32, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 3
	dc.b $34, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 4
	dc.b $35, $23, $ef	; Set frequency '9199' (octave 4 semitone 1007) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 1
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $22, $e1	; Set frequency '8929' (octave 4 semitone 737) for channel FM 3
	dc.b $34, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 4
	dc.b $35, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ed	; Set frequency '8941' (octave 4 semitone 749) for channel FM 1
	dc.b $31, $1c, $8a	; Set frequency '7306' (octave 3 semitone 1162) for channel FM 2
	dc.b $32, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 3
	dc.b $34, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 4
	dc.b $35, $23, $ed	; Set frequency '9197' (octave 4 semitone 1005) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 1
	dc.b $31, $1c, $8b	; Set frequency '7307' (octave 3 semitone 1163) for channel FM 2
	dc.b $32, $22, $e3	; Set frequency '8931' (octave 4 semitone 739) for channel FM 3
	dc.b $34, $23, $d5	; Set frequency '9173' (octave 4 semitone 981) for channel FM 4
	dc.b $35, $23, $ec	; Set frequency '9196' (octave 4 semitone 1004) for channel FM 5
; Pattern $00, Row 101; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $eb	; Set frequency '8939' (octave 4 semitone 747) for channel FM 1
	dc.b $31, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 2
	dc.b $32, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 3
	dc.b $34, $23, $d6	; Set frequency '9174' (octave 4 semitone 982) for channel FM 4
	dc.b $35, $23, $eb	; Set frequency '9195' (octave 4 semitone 1003) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 1
	dc.b $31, $1c, $8d	; Set frequency '7309' (octave 3 semitone 1165) for channel FM 2
	dc.b $32, $22, $e5	; Set frequency '8933' (octave 4 semitone 741) for channel FM 3
	dc.b $34, $23, $d7	; Set frequency '9175' (octave 4 semitone 983) for channel FM 4
	dc.b $35, $23, $ea	; Set frequency '9194' (octave 4 semitone 1002) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e9	; Set frequency '8937' (octave 4 semitone 745) for channel FM 1
	dc.b $31, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 2
	dc.b $32, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 3
	dc.b $34, $23, $d8	; Set frequency '9176' (octave 4 semitone 984) for channel FM 4
	dc.b $35, $23, $e9	; Set frequency '9193' (octave 4 semitone 1001) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 1
	dc.b $31, $1c, $8f	; Set frequency '7311' (octave 3 semitone 1167) for channel FM 2
	dc.b $32, $22, $e7	; Set frequency '8935' (octave 4 semitone 743) for channel FM 3
	dc.b $34, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 4
	dc.b $35, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 5
; Pattern $00, Row 102; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e7	; Set frequency '8935' (octave 4 semitone 743) for channel FM 1
	dc.b $31, $1c, $90	; Set frequency '7312' (octave 3 semitone 1168) for channel FM 2
	dc.b $32, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 3
	dc.b $34, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 4
	dc.b $35, $23, $e7	; Set frequency '9191' (octave 4 semitone 999) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 1
	dc.b $31, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 2
	dc.b $32, $22, $e9	; Set frequency '8937' (octave 4 semitone 745) for channel FM 3
	dc.b $34, $23, $db	; Set frequency '9179' (octave 4 semitone 987) for channel FM 4
	dc.b $35, $23, $e6	; Set frequency '9190' (octave 4 semitone 998) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e5	; Set frequency '8933' (octave 4 semitone 741) for channel FM 1
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 3
	dc.b $34, $23, $dc	; Set frequency '9180' (octave 4 semitone 988) for channel FM 4
	dc.b $35, $23, $e5	; Set frequency '9189' (octave 4 semitone 997) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 1
	dc.b $31, $1c, $93	; Set frequency '7315' (octave 3 semitone 1171) for channel FM 2
	dc.b $32, $22, $eb	; Set frequency '8939' (octave 4 semitone 747) for channel FM 3
	dc.b $34, $23, $dd	; Set frequency '9181' (octave 4 semitone 989) for channel FM 4
	dc.b $35, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 5
; Pattern $00, Row 103; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e3	; Set frequency '8931' (octave 4 semitone 739) for channel FM 1
	dc.b $31, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 2
	dc.b $32, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 3
	dc.b $34, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 4
	dc.b $35, $23, $e3	; Set frequency '9187' (octave 4 semitone 995) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 1
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $32, $22, $ed	; Set frequency '8941' (octave 4 semitone 749) for channel FM 3
	dc.b $34, $23, $df	; Set frequency '9183' (octave 4 semitone 991) for channel FM 4
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e1	; Set frequency '8929' (octave 4 semitone 737) for channel FM 1
	dc.b $31, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 2
	dc.b $32, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 3
	dc.b $34, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 4
	dc.b $35, $23, $e1	; Set frequency '9185' (octave 4 semitone 993) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 1
	dc.b $31, $1c, $97	; Set frequency '7319' (octave 3 semitone 1175) for channel FM 2
	dc.b $32, $22, $ef	; Set frequency '8943' (octave 4 semitone 751) for channel FM 3
	dc.b $34, $23, $e1	; Set frequency '9185' (octave 4 semitone 993) for channel FM 4
	dc.b $35, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 5
; Pattern $00, Row 104; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $df	; Set frequency '8927' (octave 4 semitone 735) for channel FM 1
	dc.b $31, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 2
	dc.b $32, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 3
	dc.b $34, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 4
	dc.b $35, $23, $df	; Set frequency '9183' (octave 4 semitone 991) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 1
	dc.b $31, $1c, $99	; Set frequency '7321' (octave 3 semitone 1177) for channel FM 2
	dc.b $32, $22, $f1	; Set frequency '8945' (octave 4 semitone 753) for channel FM 3
	dc.b $34, $23, $e3	; Set frequency '9187' (octave 4 semitone 995) for channel FM 4
	dc.b $35, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $dd	; Set frequency '8925' (octave 4 semitone 733) for channel FM 1
	dc.b $31, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 2
	dc.b $32, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 3
	dc.b $34, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 4
	dc.b $35, $23, $dd	; Set frequency '9181' (octave 4 semitone 989) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 1
	dc.b $31, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 2
	dc.b $32, $22, $f3	; Set frequency '8947' (octave 4 semitone 755) for channel FM 3
	dc.b $34, $23, $e5	; Set frequency '9189' (octave 4 semitone 997) for channel FM 4
	dc.b $35, $23, $dc	; Set frequency '9180' (octave 4 semitone 988) for channel FM 5
; Pattern $00, Row 105; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $db	; Set frequency '8923' (octave 4 semitone 731) for channel FM 1
	dc.b $31, $1c, $9c	; Set frequency '7324' (octave 3 semitone 1180) for channel FM 2
	dc.b $32, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 3
	dc.b $34, $23, $e6	; Set frequency '9190' (octave 4 semitone 998) for channel FM 4
	dc.b $35, $23, $db	; Set frequency '9179' (octave 4 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 1
	dc.b $31, $1c, $9d	; Set frequency '7325' (octave 3 semitone 1181) for channel FM 2
	dc.b $32, $22, $f5	; Set frequency '8949' (octave 4 semitone 757) for channel FM 3
	dc.b $34, $23, $e7	; Set frequency '9191' (octave 4 semitone 999) for channel FM 4
	dc.b $35, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d9	; Set frequency '8921' (octave 4 semitone 729) for channel FM 1
	dc.b $31, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 2
	dc.b $32, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 3
	dc.b $34, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 4
	dc.b $35, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 1
	dc.b $31, $1c, $9f	; Set frequency '7327' (octave 3 semitone 1183) for channel FM 2
	dc.b $32, $22, $f7	; Set frequency '8951' (octave 4 semitone 759) for channel FM 3
	dc.b $34, $23, $e9	; Set frequency '9193' (octave 4 semitone 1001) for channel FM 4
	dc.b $35, $23, $d8	; Set frequency '9176' (octave 4 semitone 984) for channel FM 5
; Pattern $00, Row 106; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d7	; Set frequency '8919' (octave 4 semitone 727) for channel FM 1
	dc.b $31, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 2
	dc.b $32, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 3
	dc.b $34, $23, $ea	; Set frequency '9194' (octave 4 semitone 1002) for channel FM 4
	dc.b $35, $23, $d7	; Set frequency '9175' (octave 4 semitone 983) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 1
	dc.b $31, $1c, $a1	; Set frequency '7329' (octave 3 semitone 1185) for channel FM 2
	dc.b $32, $22, $f9	; Set frequency '8953' (octave 4 semitone 761) for channel FM 3
	dc.b $34, $23, $eb	; Set frequency '9195' (octave 4 semitone 1003) for channel FM 4
	dc.b $35, $23, $d6	; Set frequency '9174' (octave 4 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d5	; Set frequency '8917' (octave 4 semitone 725) for channel FM 1
	dc.b $31, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 2
	dc.b $32, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 3
	dc.b $34, $23, $ec	; Set frequency '9196' (octave 4 semitone 1004) for channel FM 4
	dc.b $35, $23, $d5	; Set frequency '9173' (octave 4 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 1
	dc.b $31, $1c, $a3	; Set frequency '7331' (octave 3 semitone 1187) for channel FM 2
	dc.b $32, $22, $fb	; Set frequency '8955' (octave 4 semitone 763) for channel FM 3
	dc.b $34, $23, $ed	; Set frequency '9197' (octave 4 semitone 1005) for channel FM 4
	dc.b $35, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 5
; Pattern $00, Row 107; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d3	; Set frequency '8915' (octave 4 semitone 723) for channel FM 1
	dc.b $31, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 2
	dc.b $32, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 3
	dc.b $34, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 4
	dc.b $35, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d2	; Set frequency '8914' (octave 4 semitone 722) for channel FM 1
	dc.b $31, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 2
	dc.b $32, $22, $fd	; Set frequency '8957' (octave 4 semitone 765) for channel FM 3
	dc.b $34, $23, $ef	; Set frequency '9199' (octave 4 semitone 1007) for channel FM 4
	dc.b $35, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d1	; Set frequency '8913' (octave 4 semitone 721) for channel FM 1
	dc.b $31, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 2
	dc.b $32, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 3
	dc.b $34, $23, $f0	; Set frequency '9200' (octave 4 semitone 1008) for channel FM 4
	dc.b $35, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $d0	; Set frequency '8912' (octave 4 semitone 720) for channel FM 1
	dc.b $31, $1c, $a7	; Set frequency '7335' (octave 3 semitone 1191) for channel FM 2
	dc.b $32, $22, $ff	; Set frequency '8959' (octave 4 semitone 767) for channel FM 3
	dc.b $34, $23, $f1	; Set frequency '9201' (octave 4 semitone 1009) for channel FM 4
	dc.b $35, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 5
; Pattern $00, Row 108; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cf	; Set frequency '8911' (octave 4 semitone 719) for channel FM 1
	dc.b $31, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 2
	dc.b $32, $23, $00	; Set frequency '8960' (octave 4 semitone 768) for channel FM 3
	dc.b $34, $23, $f2	; Set frequency '9202' (octave 4 semitone 1010) for channel FM 4
	dc.b $35, $23, $cf	; Set frequency '9167' (octave 4 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 1
	dc.b $31, $1c, $a9	; Set frequency '7337' (octave 3 semitone 1193) for channel FM 2
	dc.b $32, $23, $01	; Set frequency '8961' (octave 4 semitone 769) for channel FM 3
	dc.b $34, $23, $f3	; Set frequency '9203' (octave 4 semitone 1011) for channel FM 4
	dc.b $35, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cd	; Set frequency '8909' (octave 4 semitone 717) for channel FM 1
	dc.b $31, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 2
	dc.b $32, $23, $02	; Set frequency '8962' (octave 4 semitone 770) for channel FM 3
	dc.b $34, $23, $f4	; Set frequency '9204' (octave 4 semitone 1012) for channel FM 4
	dc.b $35, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 1
	dc.b $31, $1c, $ab	; Set frequency '7339' (octave 3 semitone 1195) for channel FM 2
	dc.b $32, $23, $03	; Set frequency '8963' (octave 4 semitone 771) for channel FM 3
	dc.b $34, $23, $f5	; Set frequency '9205' (octave 4 semitone 1013) for channel FM 4
	dc.b $35, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 5
; Pattern $00, Row 109; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $cb	; Set frequency '8907' (octave 4 semitone 715) for channel FM 1
	dc.b $31, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 2
	dc.b $32, $23, $04	; Set frequency '8964' (octave 4 semitone 772) for channel FM 3
	dc.b $34, $23, $f6	; Set frequency '9206' (octave 4 semitone 1014) for channel FM 4
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ca	; Set frequency '8906' (octave 4 semitone 714) for channel FM 1
	dc.b $31, $1c, $ad	; Set frequency '7341' (octave 3 semitone 1197) for channel FM 2
	dc.b $32, $23, $05	; Set frequency '8965' (octave 4 semitone 773) for channel FM 3
	dc.b $34, $23, $f7	; Set frequency '9207' (octave 4 semitone 1015) for channel FM 4
	dc.b $35, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c9	; Set frequency '8905' (octave 4 semitone 713) for channel FM 1
	dc.b $31, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 2
	dc.b $32, $23, $06	; Set frequency '8966' (octave 4 semitone 774) for channel FM 3
	dc.b $34, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 4
	dc.b $35, $23, $c9	; Set frequency '9161' (octave 4 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 1
	dc.b $31, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 2
	dc.b $32, $23, $07	; Set frequency '8967' (octave 4 semitone 775) for channel FM 3
	dc.b $34, $23, $f9	; Set frequency '9209' (octave 4 semitone 1017) for channel FM 4
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
; Pattern $00, Row 110; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c7	; Set frequency '8903' (octave 4 semitone 711) for channel FM 1
	dc.b $31, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 2
	dc.b $32, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 3
	dc.b $34, $23, $fa	; Set frequency '9210' (octave 4 semitone 1018) for channel FM 4
	dc.b $35, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 1
	dc.b $31, $1c, $b1	; Set frequency '7345' (octave 3 semitone 1201) for channel FM 2
	dc.b $32, $23, $09	; Set frequency '8969' (octave 4 semitone 777) for channel FM 3
	dc.b $34, $23, $fb	; Set frequency '9211' (octave 4 semitone 1019) for channel FM 4
	dc.b $35, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c5	; Set frequency '8901' (octave 4 semitone 709) for channel FM 1
	dc.b $31, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 2
	dc.b $32, $23, $0a	; Set frequency '8970' (octave 4 semitone 778) for channel FM 3
	dc.b $34, $23, $fc	; Set frequency '9212' (octave 4 semitone 1020) for channel FM 4
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 1
	dc.b $31, $1c, $b3	; Set frequency '7347' (octave 3 semitone 1203) for channel FM 2
	dc.b $32, $23, $0b	; Set frequency '8971' (octave 4 semitone 779) for channel FM 3
	dc.b $34, $23, $fd	; Set frequency '9213' (octave 4 semitone 1021) for channel FM 4
	dc.b $35, $23, $c4	; Set frequency '9156' (octave 4 semitone 964) for channel FM 5
; Pattern $00, Row 111; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c3	; Set frequency '8899' (octave 4 semitone 707) for channel FM 1
	dc.b $31, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 2
	dc.b $32, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 3
	dc.b $34, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 4
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 1
	dc.b $31, $1c, $b5	; Set frequency '7349' (octave 3 semitone 1205) for channel FM 2
	dc.b $32, $23, $0d	; Set frequency '8973' (octave 4 semitone 781) for channel FM 3
	dc.b $34, $23, $ff	; Set frequency '9215' (octave 4 semitone 1023) for channel FM 4
	dc.b $35, $23, $c2	; Set frequency '9154' (octave 4 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c1	; Set frequency '8897' (octave 4 semitone 705) for channel FM 1
	dc.b $31, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 2
	dc.b $32, $23, $0e	; Set frequency '8974' (octave 4 semitone 782) for channel FM 3
	dc.b $34, $24, $00	; Set frequency '9216' (octave 4 semitone 1024) for channel FM 4
	dc.b $35, $23, $c1	; Set frequency '9153' (octave 4 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 1
	dc.b $31, $1c, $b7	; Set frequency '7351' (octave 3 semitone 1207) for channel FM 2
	dc.b $32, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 3
	dc.b $34, $24, $01	; Set frequency '9217' (octave 4 semitone 1025) for channel FM 4
	dc.b $35, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 5
; Pattern $00, Row 112; 
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $bf	; Set frequency '8895' (octave 4 semitone 703) for channel FM 1
	dc.b $31, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 2
	dc.b $32, $23, $10	; Set frequency '8976' (octave 4 semitone 784) for channel FM 3
	dc.b $34, $24, $02	; Set frequency '9218' (octave 4 semitone 1026) for channel FM 4
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 1
	dc.b $31, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 2
	dc.b $32, $23, $11	; Set frequency '8977' (octave 4 semitone 785) for channel FM 3
	dc.b $34, $24, $03	; Set frequency '9219' (octave 4 semitone 1027) for channel FM 4
	dc.b $35, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $bd	; Set frequency '8893' (octave 4 semitone 701) for channel FM 1
	dc.b $31, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 2
	dc.b $32, $23, $12	; Set frequency '8978' (octave 4 semitone 786) for channel FM 3
	dc.b $34, $24, $04	; Set frequency '9220' (octave 4 semitone 1028) for channel FM 4
	dc.b $35, $23, $bd	; Set frequency '9149' (octave 4 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $bc	; Set frequency '8892' (octave 4 semitone 700) for channel FM 1
	dc.b $31, $1c, $bb	; Set frequency '7355' (octave 3 semitone 1211) for channel FM 2
	dc.b $32, $23, $13	; Set frequency '8979' (octave 4 semitone 787) for channel FM 3
	dc.b $34, $24, $05	; Set frequency '9221' (octave 4 semitone 1029) for channel FM 4
	dc.b $35, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 5
; Pattern $00, Row 113; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $bb	; Set frequency '8891' (octave 4 semitone 699) for channel FM 1
	dc.b $31, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 2
	dc.b $32, $23, $14	; Set frequency '8980' (octave 4 semitone 788) for channel FM 3
	dc.b $34, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 4
	dc.b $35, $23, $bb	; Set frequency '9147' (octave 4 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ba	; Set frequency '8890' (octave 4 semitone 698) for channel FM 1
	dc.b $31, $1c, $bd	; Set frequency '7357' (octave 3 semitone 1213) for channel FM 2
	dc.b $32, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 3
	dc.b $34, $24, $07	; Set frequency '9223' (octave 4 semitone 1031) for channel FM 4
	dc.b $35, $23, $ba	; Set frequency '9146' (octave 4 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b9	; Set frequency '8889' (octave 4 semitone 697) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $23, $16	; Set frequency '8982' (octave 4 semitone 790) for channel FM 3
	dc.b $34, $24, $08	; Set frequency '9224' (octave 4 semitone 1032) for channel FM 4
	dc.b $35, $23, $b9	; Set frequency '9145' (octave 4 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b8	; Set frequency '8888' (octave 4 semitone 696) for channel FM 1
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
	dc.b $32, $23, $17	; Set frequency '8983' (octave 4 semitone 791) for channel FM 3
	dc.b $34, $24, $09	; Set frequency '9225' (octave 4 semitone 1033) for channel FM 4
	dc.b $35, $23, $b8	; Set frequency '9144' (octave 4 semitone 952) for channel FM 5
; Pattern $00, Row 114; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b7	; Set frequency '8887' (octave 4 semitone 695) for channel FM 1
	dc.b $31, $22, $85	; Set frequency '8837' (octave 4 semitone 645) for channel FM 2
	dc.b $32, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 3
	dc.b $34, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 4
	dc.b $35, $23, $b7	; Set frequency '9143' (octave 4 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b6	; Set frequency '8886' (octave 4 semitone 694) for channel FM 1
	dc.b $31, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 2
	dc.b $32, $23, $19	; Set frequency '8985' (octave 4 semitone 793) for channel FM 3
	dc.b $34, $24, $0b	; Set frequency '9227' (octave 4 semitone 1035) for channel FM 4
	dc.b $35, $23, $b6	; Set frequency '9142' (octave 4 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b5	; Set frequency '8885' (octave 4 semitone 693) for channel FM 1
	dc.b $31, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 2
	dc.b $32, $23, $1a	; Set frequency '8986' (octave 4 semitone 794) for channel FM 3
	dc.b $34, $24, $0c	; Set frequency '9228' (octave 4 semitone 1036) for channel FM 4
	dc.b $35, $23, $b5	; Set frequency '9141' (octave 4 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 1
	dc.b $31, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 2
	dc.b $32, $23, $1b	; Set frequency '8987' (octave 4 semitone 795) for channel FM 3
	dc.b $34, $24, $0d	; Set frequency '9229' (octave 4 semitone 1037) for channel FM 4
	dc.b $35, $23, $b4	; Set frequency '9140' (octave 4 semitone 948) for channel FM 5
; Pattern $00, Row 115; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b3	; Set frequency '8883' (octave 4 semitone 691) for channel FM 1
	dc.b $31, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 2
	dc.b $32, $23, $1c	; Set frequency '8988' (octave 4 semitone 796) for channel FM 3
	dc.b $34, $24, $0e	; Set frequency '9230' (octave 4 semitone 1038) for channel FM 4
	dc.b $35, $23, $b3	; Set frequency '9139' (octave 4 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b2	; Set frequency '8882' (octave 4 semitone 690) for channel FM 1
	dc.b $31, $22, $8a	; Set frequency '8842' (octave 4 semitone 650) for channel FM 2
	dc.b $32, $23, $1d	; Set frequency '8989' (octave 4 semitone 797) for channel FM 3
	dc.b $34, $24, $0f	; Set frequency '9231' (octave 4 semitone 1039) for channel FM 4
	dc.b $35, $23, $b2	; Set frequency '9138' (octave 4 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b1	; Set frequency '8881' (octave 4 semitone 689) for channel FM 1
	dc.b $31, $22, $8b	; Set frequency '8843' (octave 4 semitone 651) for channel FM 2
	dc.b $32, $23, $1e	; Set frequency '8990' (octave 4 semitone 798) for channel FM 3
	dc.b $34, $24, $10	; Set frequency '9232' (octave 4 semitone 1040) for channel FM 4
	dc.b $35, $23, $b1	; Set frequency '9137' (octave 4 semitone 945) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $b0	; Set frequency '8880' (octave 4 semitone 688) for channel FM 1
	dc.b $31, $22, $8c	; Set frequency '8844' (octave 4 semitone 652) for channel FM 2
	dc.b $32, $23, $1f	; Set frequency '8991' (octave 4 semitone 799) for channel FM 3
	dc.b $34, $24, $11	; Set frequency '9233' (octave 4 semitone 1041) for channel FM 4
	dc.b $35, $23, $b0	; Set frequency '9136' (octave 4 semitone 944) for channel FM 5
; Pattern $00, Row 116; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $af	; Set frequency '8879' (octave 4 semitone 687) for channel FM 1
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $23, $20	; Set frequency '8992' (octave 4 semitone 800) for channel FM 3
	dc.b $34, $24, $12	; Set frequency '9234' (octave 4 semitone 1042) for channel FM 4
	dc.b $35, $23, $af	; Set frequency '9135' (octave 4 semitone 943) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ae	; Set frequency '8878' (octave 4 semitone 686) for channel FM 1
	dc.b $31, $22, $8e	; Set frequency '8846' (octave 4 semitone 654) for channel FM 2
	dc.b $32, $23, $21	; Set frequency '8993' (octave 4 semitone 801) for channel FM 3
	dc.b $34, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 4
	dc.b $35, $23, $ae	; Set frequency '9134' (octave 4 semitone 942) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ad	; Set frequency '8877' (octave 4 semitone 685) for channel FM 1
	dc.b $31, $22, $8f	; Set frequency '8847' (octave 4 semitone 655) for channel FM 2
	dc.b $32, $23, $22	; Set frequency '8994' (octave 4 semitone 802) for channel FM 3
	dc.b $34, $24, $14	; Set frequency '9236' (octave 4 semitone 1044) for channel FM 4
	dc.b $35, $23, $ad	; Set frequency '9133' (octave 4 semitone 941) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ac	; Set frequency '8876' (octave 4 semitone 684) for channel FM 1
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $32, $23, $23	; Set frequency '8995' (octave 4 semitone 803) for channel FM 3
	dc.b $34, $24, $15	; Set frequency '9237' (octave 4 semitone 1045) for channel FM 4
	dc.b $35, $23, $ac	; Set frequency '9132' (octave 4 semitone 940) for channel FM 5
; Pattern $00, Row 117; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $ab	; Set frequency '8875' (octave 4 semitone 683) for channel FM 1
	dc.b $31, $22, $91	; Set frequency '8849' (octave 4 semitone 657) for channel FM 2
	dc.b $32, $23, $24	; Set frequency '8996' (octave 4 semitone 804) for channel FM 3
	dc.b $34, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 4
	dc.b $35, $23, $ab	; Set frequency '9131' (octave 4 semitone 939) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 1
	dc.b $31, $22, $92	; Set frequency '8850' (octave 4 semitone 658) for channel FM 2
	dc.b $32, $23, $25	; Set frequency '8997' (octave 4 semitone 805) for channel FM 3
	dc.b $34, $24, $17	; Set frequency '9239' (octave 4 semitone 1047) for channel FM 4
	dc.b $35, $23, $aa	; Set frequency '9130' (octave 4 semitone 938) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a9	; Set frequency '8873' (octave 4 semitone 681) for channel FM 1
	dc.b $31, $22, $93	; Set frequency '8851' (octave 4 semitone 659) for channel FM 2
	dc.b $32, $23, $26	; Set frequency '8998' (octave 4 semitone 806) for channel FM 3
	dc.b $34, $24, $18	; Set frequency '9240' (octave 4 semitone 1048) for channel FM 4
	dc.b $35, $23, $a9	; Set frequency '9129' (octave 4 semitone 937) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 1
	dc.b $31, $22, $94	; Set frequency '8852' (octave 4 semitone 660) for channel FM 2
	dc.b $32, $23, $27	; Set frequency '8999' (octave 4 semitone 807) for channel FM 3
	dc.b $34, $24, $19	; Set frequency '9241' (octave 4 semitone 1049) for channel FM 4
	dc.b $35, $23, $a8	; Set frequency '9128' (octave 4 semitone 936) for channel FM 5
; Pattern $00, Row 118; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a7	; Set frequency '8871' (octave 4 semitone 679) for channel FM 1
	dc.b $31, $22, $95	; Set frequency '8853' (octave 4 semitone 661) for channel FM 2
	dc.b $32, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 3
	dc.b $34, $24, $1a	; Set frequency '9242' (octave 4 semitone 1050) for channel FM 4
	dc.b $35, $23, $a7	; Set frequency '9127' (octave 4 semitone 935) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 1
	dc.b $31, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 2
	dc.b $32, $23, $29	; Set frequency '9001' (octave 4 semitone 809) for channel FM 3
	dc.b $34, $24, $1b	; Set frequency '9243' (octave 4 semitone 1051) for channel FM 4
	dc.b $35, $23, $a6	; Set frequency '9126' (octave 4 semitone 934) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 1
	dc.b $31, $22, $97	; Set frequency '8855' (octave 4 semitone 663) for channel FM 2
	dc.b $32, $23, $2a	; Set frequency '9002' (octave 4 semitone 810) for channel FM 3
	dc.b $34, $24, $1c	; Set frequency '9244' (octave 4 semitone 1052) for channel FM 4
	dc.b $35, $23, $a5	; Set frequency '9125' (octave 4 semitone 933) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 1
	dc.b $31, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 2
	dc.b $32, $23, $2b	; Set frequency '9003' (octave 4 semitone 811) for channel FM 3
	dc.b $34, $24, $1d	; Set frequency '9245' (octave 4 semitone 1053) for channel FM 4
	dc.b $35, $23, $a4	; Set frequency '9124' (octave 4 semitone 932) for channel FM 5
; Pattern $00, Row 119; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a3	; Set frequency '8867' (octave 4 semitone 675) for channel FM 1
	dc.b $31, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 2
	dc.b $32, $23, $2c	; Set frequency '9004' (octave 4 semitone 812) for channel FM 3
	dc.b $34, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 4
	dc.b $35, $23, $a3	; Set frequency '9123' (octave 4 semitone 931) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 1
	dc.b $31, $22, $9a	; Set frequency '8858' (octave 4 semitone 666) for channel FM 2
	dc.b $32, $23, $2d	; Set frequency '9005' (octave 4 semitone 813) for channel FM 3
	dc.b $34, $24, $1f	; Set frequency '9247' (octave 4 semitone 1055) for channel FM 4
	dc.b $35, $23, $a2	; Set frequency '9122' (octave 4 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a1	; Set frequency '8865' (octave 4 semitone 673) for channel FM 1
	dc.b $31, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 2
	dc.b $32, $23, $2e	; Set frequency '9006' (octave 4 semitone 814) for channel FM 3
	dc.b $34, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 4
	dc.b $35, $23, $a1	; Set frequency '9121' (octave 4 semitone 929) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 1
	dc.b $31, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 2
	dc.b $32, $23, $2f	; Set frequency '9007' (octave 4 semitone 815) for channel FM 3
	dc.b $34, $24, $21	; Set frequency '9249' (octave 4 semitone 1057) for channel FM 4
	dc.b $35, $23, $a0	; Set frequency '9120' (octave 4 semitone 928) for channel FM 5
; Pattern $00, Row 120; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 1
	dc.b $31, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 2
	dc.b $32, $23, $30	; Set frequency '9008' (octave 4 semitone 816) for channel FM 3
	dc.b $34, $24, $22	; Set frequency '9250' (octave 4 semitone 1058) for channel FM 4
	dc.b $35, $23, $9f	; Set frequency '9119' (octave 4 semitone 927) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 1
	dc.b $31, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 2
	dc.b $32, $23, $31	; Set frequency '9009' (octave 4 semitone 817) for channel FM 3
	dc.b $34, $24, $23	; Set frequency '9251' (octave 4 semitone 1059) for channel FM 4
	dc.b $35, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 1
	dc.b $31, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 2
	dc.b $32, $23, $32	; Set frequency '9010' (octave 4 semitone 818) for channel FM 3
	dc.b $34, $24, $24	; Set frequency '9252' (octave 4 semitone 1060) for channel FM 4
	dc.b $35, $23, $9d	; Set frequency '9117' (octave 4 semitone 925) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 1
	dc.b $31, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 2
	dc.b $32, $23, $33	; Set frequency '9011' (octave 4 semitone 819) for channel FM 3
	dc.b $34, $24, $25	; Set frequency '9253' (octave 4 semitone 1061) for channel FM 4
	dc.b $35, $23, $9c	; Set frequency '9116' (octave 4 semitone 924) for channel FM 5
; Pattern $00, Row 121; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 1
	dc.b $31, $22, $a1	; Set frequency '8865' (octave 4 semitone 673) for channel FM 2
	dc.b $32, $23, $34	; Set frequency '9012' (octave 4 semitone 820) for channel FM 3
	dc.b $34, $24, $26	; Set frequency '9254' (octave 4 semitone 1062) for channel FM 4
	dc.b $35, $23, $9b	; Set frequency '9115' (octave 4 semitone 923) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $9a	; Set frequency '8858' (octave 4 semitone 666) for channel FM 1
	dc.b $31, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 2
	dc.b $32, $23, $35	; Set frequency '9013' (octave 4 semitone 821) for channel FM 3
	dc.b $34, $24, $27	; Set frequency '9255' (octave 4 semitone 1063) for channel FM 4
	dc.b $35, $23, $9a	; Set frequency '9114' (octave 4 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 1
	dc.b $31, $22, $a3	; Set frequency '8867' (octave 4 semitone 675) for channel FM 2
	dc.b $32, $23, $36	; Set frequency '9014' (octave 4 semitone 822) for channel FM 3
	dc.b $34, $24, $28	; Set frequency '9256' (octave 4 semitone 1064) for channel FM 4
	dc.b $35, $23, $99	; Set frequency '9113' (octave 4 semitone 921) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 1
	dc.b $31, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 2
	dc.b $32, $23, $37	; Set frequency '9015' (octave 4 semitone 823) for channel FM 3
	dc.b $34, $24, $29	; Set frequency '9257' (octave 4 semitone 1065) for channel FM 4
	dc.b $35, $23, $98	; Set frequency '9112' (octave 4 semitone 920) for channel FM 5
; Pattern $00, Row 122; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $97	; Set frequency '8855' (octave 4 semitone 663) for channel FM 1
	dc.b $31, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 2
	dc.b $32, $23, $38	; Set frequency '9016' (octave 4 semitone 824) for channel FM 3
	dc.b $34, $24, $2a	; Set frequency '9258' (octave 4 semitone 1066) for channel FM 4
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 1
	dc.b $31, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 2
	dc.b $32, $23, $39	; Set frequency '9017' (octave 4 semitone 825) for channel FM 3
	dc.b $34, $24, $2b	; Set frequency '9259' (octave 4 semitone 1067) for channel FM 4
	dc.b $35, $23, $96	; Set frequency '9110' (octave 4 semitone 918) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $95	; Set frequency '8853' (octave 4 semitone 661) for channel FM 1
	dc.b $31, $22, $a7	; Set frequency '8871' (octave 4 semitone 679) for channel FM 2
	dc.b $32, $23, $3a	; Set frequency '9018' (octave 4 semitone 826) for channel FM 3
	dc.b $34, $24, $2c	; Set frequency '9260' (octave 4 semitone 1068) for channel FM 4
	dc.b $35, $23, $95	; Set frequency '9109' (octave 4 semitone 917) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $94	; Set frequency '8852' (octave 4 semitone 660) for channel FM 1
	dc.b $31, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 2
	dc.b $32, $23, $3b	; Set frequency '9019' (octave 4 semitone 827) for channel FM 3
	dc.b $34, $24, $2d	; Set frequency '9261' (octave 4 semitone 1069) for channel FM 4
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
; Pattern $00, Row 123; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $93	; Set frequency '8851' (octave 4 semitone 659) for channel FM 1
	dc.b $31, $22, $a9	; Set frequency '8873' (octave 4 semitone 681) for channel FM 2
	dc.b $32, $23, $3c	; Set frequency '9020' (octave 4 semitone 828) for channel FM 3
	dc.b $34, $24, $2e	; Set frequency '9262' (octave 4 semitone 1070) for channel FM 4
	dc.b $35, $23, $93	; Set frequency '9107' (octave 4 semitone 915) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $92	; Set frequency '8850' (octave 4 semitone 658) for channel FM 1
	dc.b $31, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 2
	dc.b $32, $23, $3d	; Set frequency '9021' (octave 4 semitone 829) for channel FM 3
	dc.b $34, $24, $2f	; Set frequency '9263' (octave 4 semitone 1071) for channel FM 4
	dc.b $35, $23, $92	; Set frequency '9106' (octave 4 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $91	; Set frequency '8849' (octave 4 semitone 657) for channel FM 1
	dc.b $31, $22, $ab	; Set frequency '8875' (octave 4 semitone 683) for channel FM 2
	dc.b $32, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 3
	dc.b $34, $24, $30	; Set frequency '9264' (octave 4 semitone 1072) for channel FM 4
	dc.b $35, $23, $91	; Set frequency '9105' (octave 4 semitone 913) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 1
	dc.b $31, $22, $ac	; Set frequency '8876' (octave 4 semitone 684) for channel FM 2
	dc.b $32, $23, $3f	; Set frequency '9023' (octave 4 semitone 831) for channel FM 3
	dc.b $34, $24, $31	; Set frequency '9265' (octave 4 semitone 1073) for channel FM 4
	dc.b $35, $23, $90	; Set frequency '9104' (octave 4 semitone 912) for channel FM 5
; Pattern $00, Row 124; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8f	; Set frequency '8847' (octave 4 semitone 655) for channel FM 1
	dc.b $31, $22, $ad	; Set frequency '8877' (octave 4 semitone 685) for channel FM 2
	dc.b $32, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 3
	dc.b $34, $24, $32	; Set frequency '9266' (octave 4 semitone 1074) for channel FM 4
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8e	; Set frequency '8846' (octave 4 semitone 654) for channel FM 1
	dc.b $31, $22, $ae	; Set frequency '8878' (octave 4 semitone 686) for channel FM 2
	dc.b $32, $23, $41	; Set frequency '9025' (octave 4 semitone 833) for channel FM 3
	dc.b $34, $24, $33	; Set frequency '9267' (octave 4 semitone 1075) for channel FM 4
	dc.b $35, $23, $8e	; Set frequency '9102' (octave 4 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 1
	dc.b $31, $22, $af	; Set frequency '8879' (octave 4 semitone 687) for channel FM 2
	dc.b $32, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 3
	dc.b $34, $24, $34	; Set frequency '9268' (octave 4 semitone 1076) for channel FM 4
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8c	; Set frequency '8844' (octave 4 semitone 652) for channel FM 1
	dc.b $31, $22, $b0	; Set frequency '8880' (octave 4 semitone 688) for channel FM 2
	dc.b $32, $23, $43	; Set frequency '9027' (octave 4 semitone 835) for channel FM 3
	dc.b $34, $24, $35	; Set frequency '9269' (octave 4 semitone 1077) for channel FM 4
	dc.b $35, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 5
; Pattern $00, Row 125; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8b	; Set frequency '8843' (octave 4 semitone 651) for channel FM 1
	dc.b $31, $22, $b1	; Set frequency '8881' (octave 4 semitone 689) for channel FM 2
	dc.b $32, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 3
	dc.b $34, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 4
	dc.b $35, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8a	; Set frequency '8842' (octave 4 semitone 650) for channel FM 1
	dc.b $31, $22, $b2	; Set frequency '8882' (octave 4 semitone 690) for channel FM 2
	dc.b $32, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 3
	dc.b $34, $24, $37	; Set frequency '9271' (octave 4 semitone 1079) for channel FM 4
	dc.b $35, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 1
	dc.b $31, $22, $b3	; Set frequency '8883' (octave 4 semitone 691) for channel FM 2
	dc.b $32, $23, $46	; Set frequency '9030' (octave 4 semitone 838) for channel FM 3
	dc.b $34, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 4
	dc.b $35, $23, $89	; Set frequency '9097' (octave 4 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 1
	dc.b $31, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 2
	dc.b $32, $23, $47	; Set frequency '9031' (octave 4 semitone 839) for channel FM 3
	dc.b $34, $24, $39	; Set frequency '9273' (octave 4 semitone 1081) for channel FM 4
	dc.b $35, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 5
; Pattern $00, Row 126; 
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 1
	dc.b $31, $22, $b5	; Set frequency '8885' (octave 4 semitone 693) for channel FM 2
	dc.b $32, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 3
	dc.b $34, $24, $3a	; Set frequency '9274' (octave 4 semitone 1082) for channel FM 4
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 1
	dc.b $31, $22, $b6	; Set frequency '8886' (octave 4 semitone 694) for channel FM 2
	dc.b $32, $23, $49	; Set frequency '9033' (octave 4 semitone 841) for channel FM 3
	dc.b $34, $24, $3b	; Set frequency '9275' (octave 4 semitone 1083) for channel FM 4
	dc.b $35, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $85	; Set frequency '8837' (octave 4 semitone 645) for channel FM 1
	dc.b $31, $22, $b7	; Set frequency '8887' (octave 4 semitone 695) for channel FM 2
	dc.b $32, $23, $4a	; Set frequency '9034' (octave 4 semitone 842) for channel FM 3
	dc.b $34, $24, $3c	; Set frequency '9276' (octave 4 semitone 1084) for channel FM 4
	dc.b $35, $23, $85	; Set frequency '9093' (octave 4 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 1
	dc.b $31, $22, $b8	; Set frequency '8888' (octave 4 semitone 696) for channel FM 2
	dc.b $32, $23, $4b	; Set frequency '9035' (octave 4 semitone 843) for channel FM 3
	dc.b $34, $24, $3d	; Set frequency '9277' (octave 4 semitone 1085) for channel FM 4
	dc.b $35, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 5
; Pattern $00, Row 127; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $22, $b9	; Set frequency '8889' (octave 4 semitone 697) for channel FM 2
	dc.b $32, $23, $4c	; Set frequency '9036' (octave 4 semitone 844) for channel FM 3
	dc.b $34, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 4
	dc.b $35, $23, $83	; Set frequency '9091' (octave 4 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $bd	; Set frequency '7357' (octave 3 semitone 1213) for channel FM 1
	dc.b $31, $22, $ba	; Set frequency '8890' (octave 4 semitone 698) for channel FM 2
	dc.b $32, $23, $4d	; Set frequency '9037' (octave 4 semitone 845) for channel FM 3
	dc.b $34, $24, $3f	; Set frequency '9279' (octave 4 semitone 1087) for channel FM 4
	dc.b $35, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 1
	dc.b $31, $22, $bb	; Set frequency '8891' (octave 4 semitone 699) for channel FM 2
	dc.b $32, $23, $4e	; Set frequency '9038' (octave 4 semitone 846) for channel FM 3
	dc.b $34, $24, $40	; Set frequency '9280' (octave 4 semitone 1088) for channel FM 4
	dc.b $35, $23, $81	; Set frequency '9089' (octave 4 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $bb	; Set frequency '7355' (octave 3 semitone 1211) for channel FM 1
	dc.b $31, $22, $bc	; Set frequency '8892' (octave 4 semitone 700) for channel FM 2
	dc.b $32, $23, $4f	; Set frequency '9039' (octave 4 semitone 847) for channel FM 3
	dc.b $34, $24, $41	; Set frequency '9281' (octave 4 semitone 1089) for channel FM 4
	dc.b $35, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 5
; Pattern $00, Row 128; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 1
	dc.b $31, $22, $bd	; Set frequency '8893' (octave 4 semitone 701) for channel FM 2
	dc.b $32, $23, $50	; Set frequency '9040' (octave 4 semitone 848) for channel FM 3
	dc.b $34, $24, $42	; Set frequency '9282' (octave 4 semitone 1090) for channel FM 4
	dc.b $35, $23, $7f	; Set frequency '9087' (octave 4 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 1
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $32, $23, $51	; Set frequency '9041' (octave 4 semitone 849) for channel FM 3
	dc.b $34, $24, $43	; Set frequency '9283' (octave 4 semitone 1091) for channel FM 4
	dc.b $35, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 1
	dc.b $31, $22, $bf	; Set frequency '8895' (octave 4 semitone 703) for channel FM 2
	dc.b $32, $23, $52	; Set frequency '9042' (octave 4 semitone 850) for channel FM 3
	dc.b $34, $24, $44	; Set frequency '9284' (octave 4 semitone 1092) for channel FM 4
	dc.b $35, $23, $7d	; Set frequency '9085' (octave 4 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b7	; Set frequency '7351' (octave 3 semitone 1207) for channel FM 1
	dc.b $31, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 2
	dc.b $32, $23, $53	; Set frequency '9043' (octave 4 semitone 851) for channel FM 3
	dc.b $34, $24, $45	; Set frequency '9285' (octave 4 semitone 1093) for channel FM 4
	dc.b $35, $23, $7c	; Set frequency '9084' (octave 4 semitone 892) for channel FM 5
; Pattern $00, Row 129; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 1
	dc.b $31, $22, $c1	; Set frequency '8897' (octave 4 semitone 705) for channel FM 2
	dc.b $32, $23, $54	; Set frequency '9044' (octave 4 semitone 852) for channel FM 3
	dc.b $34, $24, $46	; Set frequency '9286' (octave 4 semitone 1094) for channel FM 4
	dc.b $35, $23, $7b	; Set frequency '9083' (octave 4 semitone 891) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b5	; Set frequency '7349' (octave 3 semitone 1205) for channel FM 1
	dc.b $31, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 2
	dc.b $32, $23, $55	; Set frequency '9045' (octave 4 semitone 853) for channel FM 3
	dc.b $34, $24, $47	; Set frequency '9287' (octave 4 semitone 1095) for channel FM 4
	dc.b $35, $23, $7a	; Set frequency '9082' (octave 4 semitone 890) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 1
	dc.b $31, $22, $c3	; Set frequency '8899' (octave 4 semitone 707) for channel FM 2
	dc.b $32, $23, $56	; Set frequency '9046' (octave 4 semitone 854) for channel FM 3
	dc.b $34, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 4
	dc.b $35, $23, $79	; Set frequency '9081' (octave 4 semitone 889) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b3	; Set frequency '7347' (octave 3 semitone 1203) for channel FM 1
	dc.b $31, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 2
	dc.b $32, $23, $57	; Set frequency '9047' (octave 4 semitone 855) for channel FM 3
	dc.b $34, $24, $49	; Set frequency '9289' (octave 4 semitone 1097) for channel FM 4
	dc.b $35, $23, $78	; Set frequency '9080' (octave 4 semitone 888) for channel FM 5
; Pattern $00, Row 130; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 1
	dc.b $31, $22, $c5	; Set frequency '8901' (octave 4 semitone 709) for channel FM 2
	dc.b $32, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 3
	dc.b $34, $24, $4a	; Set frequency '9290' (octave 4 semitone 1098) for channel FM 4
	dc.b $35, $23, $77	; Set frequency '9079' (octave 4 semitone 887) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b1	; Set frequency '7345' (octave 3 semitone 1201) for channel FM 1
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $32, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 3
	dc.b $34, $24, $4b	; Set frequency '9291' (octave 4 semitone 1099) for channel FM 4
	dc.b $35, $23, $76	; Set frequency '9078' (octave 4 semitone 886) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 1
	dc.b $31, $22, $c7	; Set frequency '8903' (octave 4 semitone 711) for channel FM 2
	dc.b $32, $23, $5a	; Set frequency '9050' (octave 4 semitone 858) for channel FM 3
	dc.b $34, $24, $4c	; Set frequency '9292' (octave 4 semitone 1100) for channel FM 4
	dc.b $35, $23, $75	; Set frequency '9077' (octave 4 semitone 885) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 1
	dc.b $31, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 2
	dc.b $32, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 3
	dc.b $34, $24, $4d	; Set frequency '9293' (octave 4 semitone 1101) for channel FM 4
	dc.b $35, $23, $74	; Set frequency '9076' (octave 4 semitone 884) for channel FM 5
; Pattern $00, Row 131; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 1
	dc.b $31, $22, $c9	; Set frequency '8905' (octave 4 semitone 713) for channel FM 2
	dc.b $32, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 3
	dc.b $34, $24, $4e	; Set frequency '9294' (octave 4 semitone 1102) for channel FM 4
	dc.b $35, $23, $73	; Set frequency '9075' (octave 4 semitone 883) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ad	; Set frequency '7341' (octave 3 semitone 1197) for channel FM 1
	dc.b $31, $22, $ca	; Set frequency '8906' (octave 4 semitone 714) for channel FM 2
	dc.b $32, $23, $5d	; Set frequency '9053' (octave 4 semitone 861) for channel FM 3
	dc.b $34, $24, $4f	; Set frequency '9295' (octave 4 semitone 1103) for channel FM 4
	dc.b $35, $23, $72	; Set frequency '9074' (octave 4 semitone 882) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 1
	dc.b $31, $22, $cb	; Set frequency '8907' (octave 4 semitone 715) for channel FM 2
	dc.b $32, $23, $5e	; Set frequency '9054' (octave 4 semitone 862) for channel FM 3
	dc.b $34, $24, $50	; Set frequency '9296' (octave 4 semitone 1104) for channel FM 4
	dc.b $35, $23, $71	; Set frequency '9073' (octave 4 semitone 881) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ab	; Set frequency '7339' (octave 3 semitone 1195) for channel FM 1
	dc.b $31, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 2
	dc.b $32, $23, $5f	; Set frequency '9055' (octave 4 semitone 863) for channel FM 3
	dc.b $34, $24, $51	; Set frequency '9297' (octave 4 semitone 1105) for channel FM 4
	dc.b $35, $23, $70	; Set frequency '9072' (octave 4 semitone 880) for channel FM 5
; Pattern $00, Row 132; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 1
	dc.b $31, $22, $cd	; Set frequency '8909' (octave 4 semitone 717) for channel FM 2
	dc.b $32, $23, $60	; Set frequency '9056' (octave 4 semitone 864) for channel FM 3
	dc.b $34, $24, $52	; Set frequency '9298' (octave 4 semitone 1106) for channel FM 4
	dc.b $35, $23, $6f	; Set frequency '9071' (octave 4 semitone 879) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a9	; Set frequency '7337' (octave 3 semitone 1193) for channel FM 1
	dc.b $31, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 2
	dc.b $32, $23, $61	; Set frequency '9057' (octave 4 semitone 865) for channel FM 3
	dc.b $34, $24, $53	; Set frequency '9299' (octave 4 semitone 1107) for channel FM 4
	dc.b $35, $23, $6e	; Set frequency '9070' (octave 4 semitone 878) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 1
	dc.b $31, $22, $cf	; Set frequency '8911' (octave 4 semitone 719) for channel FM 2
	dc.b $32, $23, $62	; Set frequency '9058' (octave 4 semitone 866) for channel FM 3
	dc.b $34, $24, $54	; Set frequency '9300' (octave 4 semitone 1108) for channel FM 4
	dc.b $35, $23, $6d	; Set frequency '9069' (octave 4 semitone 877) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a7	; Set frequency '7335' (octave 3 semitone 1191) for channel FM 1
	dc.b $31, $22, $d0	; Set frequency '8912' (octave 4 semitone 720) for channel FM 2
	dc.b $32, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 3
	dc.b $34, $24, $55	; Set frequency '9301' (octave 4 semitone 1109) for channel FM 4
	dc.b $35, $23, $6c	; Set frequency '9068' (octave 4 semitone 876) for channel FM 5
; Pattern $00, Row 133; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 1
	dc.b $31, $22, $d1	; Set frequency '8913' (octave 4 semitone 721) for channel FM 2
	dc.b $32, $23, $64	; Set frequency '9060' (octave 4 semitone 868) for channel FM 3
	dc.b $34, $24, $56	; Set frequency '9302' (octave 4 semitone 1110) for channel FM 4
	dc.b $35, $23, $6b	; Set frequency '9067' (octave 4 semitone 875) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 1
	dc.b $31, $22, $d2	; Set frequency '8914' (octave 4 semitone 722) for channel FM 2
	dc.b $32, $23, $65	; Set frequency '9061' (octave 4 semitone 869) for channel FM 3
	dc.b $34, $24, $57	; Set frequency '9303' (octave 4 semitone 1111) for channel FM 4
	dc.b $35, $23, $6a	; Set frequency '9066' (octave 4 semitone 874) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 1
	dc.b $31, $22, $d3	; Set frequency '8915' (octave 4 semitone 723) for channel FM 2
	dc.b $32, $23, $66	; Set frequency '9062' (octave 4 semitone 870) for channel FM 3
	dc.b $34, $24, $58	; Set frequency '9304' (octave 4 semitone 1112) for channel FM 4
	dc.b $35, $23, $69	; Set frequency '9065' (octave 4 semitone 873) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a3	; Set frequency '7331' (octave 3 semitone 1187) for channel FM 1
	dc.b $31, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 2
	dc.b $32, $23, $67	; Set frequency '9063' (octave 4 semitone 871) for channel FM 3
	dc.b $34, $24, $59	; Set frequency '9305' (octave 4 semitone 1113) for channel FM 4
	dc.b $35, $23, $68	; Set frequency '9064' (octave 4 semitone 872) for channel FM 5
; Pattern $00, Row 134; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 1
	dc.b $31, $22, $d5	; Set frequency '8917' (octave 4 semitone 725) for channel FM 2
	dc.b $32, $23, $68	; Set frequency '9064' (octave 4 semitone 872) for channel FM 3
	dc.b $34, $24, $5a	; Set frequency '9306' (octave 4 semitone 1114) for channel FM 4
	dc.b $35, $23, $67	; Set frequency '9063' (octave 4 semitone 871) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a1	; Set frequency '7329' (octave 3 semitone 1185) for channel FM 1
	dc.b $31, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 2
	dc.b $32, $23, $69	; Set frequency '9065' (octave 4 semitone 873) for channel FM 3
	dc.b $34, $24, $5b	; Set frequency '9307' (octave 4 semitone 1115) for channel FM 4
	dc.b $35, $23, $66	; Set frequency '9062' (octave 4 semitone 870) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 1
	dc.b $31, $22, $d7	; Set frequency '8919' (octave 4 semitone 727) for channel FM 2
	dc.b $32, $23, $6a	; Set frequency '9066' (octave 4 semitone 874) for channel FM 3
	dc.b $34, $24, $5c	; Set frequency '9308' (octave 4 semitone 1116) for channel FM 4
	dc.b $35, $23, $65	; Set frequency '9061' (octave 4 semitone 869) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $9f	; Set frequency '7327' (octave 3 semitone 1183) for channel FM 1
	dc.b $31, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 2
	dc.b $32, $23, $6b	; Set frequency '9067' (octave 4 semitone 875) for channel FM 3
	dc.b $34, $24, $5d	; Set frequency '9309' (octave 4 semitone 1117) for channel FM 4
	dc.b $35, $23, $64	; Set frequency '9060' (octave 4 semitone 868) for channel FM 5
; Pattern $00, Row 135; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 1
	dc.b $31, $22, $d9	; Set frequency '8921' (octave 4 semitone 729) for channel FM 2
	dc.b $32, $23, $6c	; Set frequency '9068' (octave 4 semitone 876) for channel FM 3
	dc.b $34, $24, $5e	; Set frequency '9310' (octave 4 semitone 1118) for channel FM 4
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $9d	; Set frequency '7325' (octave 3 semitone 1181) for channel FM 1
	dc.b $31, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 2
	dc.b $32, $23, $6d	; Set frequency '9069' (octave 4 semitone 877) for channel FM 3
	dc.b $34, $24, $5f	; Set frequency '9311' (octave 4 semitone 1119) for channel FM 4
	dc.b $35, $23, $62	; Set frequency '9058' (octave 4 semitone 866) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $9c	; Set frequency '7324' (octave 3 semitone 1180) for channel FM 1
	dc.b $31, $22, $db	; Set frequency '8923' (octave 4 semitone 731) for channel FM 2
	dc.b $32, $23, $6e	; Set frequency '9070' (octave 4 semitone 878) for channel FM 3
	dc.b $34, $24, $60	; Set frequency '9312' (octave 4 semitone 1120) for channel FM 4
	dc.b $35, $23, $61	; Set frequency '9057' (octave 4 semitone 865) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 1
	dc.b $31, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 2
	dc.b $32, $23, $6f	; Set frequency '9071' (octave 4 semitone 879) for channel FM 3
	dc.b $34, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 4
	dc.b $35, $23, $60	; Set frequency '9056' (octave 4 semitone 864) for channel FM 5
; Pattern $00, Row 136; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 1
	dc.b $31, $22, $dd	; Set frequency '8925' (octave 4 semitone 733) for channel FM 2
	dc.b $32, $23, $70	; Set frequency '9072' (octave 4 semitone 880) for channel FM 3
	dc.b $34, $24, $62	; Set frequency '9314' (octave 4 semitone 1122) for channel FM 4
	dc.b $35, $23, $5f	; Set frequency '9055' (octave 4 semitone 863) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $99	; Set frequency '7321' (octave 3 semitone 1177) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $32, $23, $71	; Set frequency '9073' (octave 4 semitone 881) for channel FM 3
	dc.b $34, $24, $63	; Set frequency '9315' (octave 4 semitone 1123) for channel FM 4
	dc.b $35, $23, $5e	; Set frequency '9054' (octave 4 semitone 862) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 1
	dc.b $31, $22, $df	; Set frequency '8927' (octave 4 semitone 735) for channel FM 2
	dc.b $32, $23, $72	; Set frequency '9074' (octave 4 semitone 882) for channel FM 3
	dc.b $34, $24, $64	; Set frequency '9316' (octave 4 semitone 1124) for channel FM 4
	dc.b $35, $23, $5d	; Set frequency '9053' (octave 4 semitone 861) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $97	; Set frequency '7319' (octave 3 semitone 1175) for channel FM 1
	dc.b $31, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 2
	dc.b $32, $23, $73	; Set frequency '9075' (octave 4 semitone 883) for channel FM 3
	dc.b $34, $24, $65	; Set frequency '9317' (octave 4 semitone 1125) for channel FM 4
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
; Pattern $00, Row 137; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 1
	dc.b $31, $22, $e1	; Set frequency '8929' (octave 4 semitone 737) for channel FM 2
	dc.b $32, $23, $74	; Set frequency '9076' (octave 4 semitone 884) for channel FM 3
	dc.b $34, $24, $66	; Set frequency '9318' (octave 4 semitone 1126) for channel FM 4
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 1
	dc.b $31, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 2
	dc.b $32, $23, $75	; Set frequency '9077' (octave 4 semitone 885) for channel FM 3
	dc.b $34, $24, $67	; Set frequency '9319' (octave 4 semitone 1127) for channel FM 4
	dc.b $35, $23, $5a	; Set frequency '9050' (octave 4 semitone 858) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 1
	dc.b $31, $22, $e3	; Set frequency '8931' (octave 4 semitone 739) for channel FM 2
	dc.b $32, $23, $76	; Set frequency '9078' (octave 4 semitone 886) for channel FM 3
	dc.b $34, $24, $68	; Set frequency '9320' (octave 4 semitone 1128) for channel FM 4
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $93	; Set frequency '7315' (octave 3 semitone 1171) for channel FM 1
	dc.b $31, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 2
	dc.b $32, $23, $77	; Set frequency '9079' (octave 4 semitone 887) for channel FM 3
	dc.b $34, $24, $69	; Set frequency '9321' (octave 4 semitone 1129) for channel FM 4
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
; Pattern $00, Row 138; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 1
	dc.b $31, $22, $e5	; Set frequency '8933' (octave 4 semitone 741) for channel FM 2
	dc.b $32, $23, $78	; Set frequency '9080' (octave 4 semitone 888) for channel FM 3
	dc.b $34, $24, $6a	; Set frequency '9322' (octave 4 semitone 1130) for channel FM 4
	dc.b $35, $23, $57	; Set frequency '9047' (octave 4 semitone 855) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 1
	dc.b $31, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 2
	dc.b $32, $23, $79	; Set frequency '9081' (octave 4 semitone 889) for channel FM 3
	dc.b $34, $24, $6b	; Set frequency '9323' (octave 4 semitone 1131) for channel FM 4
	dc.b $35, $23, $56	; Set frequency '9046' (octave 4 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $90	; Set frequency '7312' (octave 3 semitone 1168) for channel FM 1
	dc.b $31, $22, $e7	; Set frequency '8935' (octave 4 semitone 743) for channel FM 2
	dc.b $32, $23, $7a	; Set frequency '9082' (octave 4 semitone 890) for channel FM 3
	dc.b $34, $24, $6c	; Set frequency '9324' (octave 4 semitone 1132) for channel FM 4
	dc.b $35, $23, $55	; Set frequency '9045' (octave 4 semitone 853) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $8f	; Set frequency '7311' (octave 3 semitone 1167) for channel FM 1
	dc.b $31, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 2
	dc.b $32, $23, $7b	; Set frequency '9083' (octave 4 semitone 891) for channel FM 3
	dc.b $34, $24, $6d	; Set frequency '9325' (octave 4 semitone 1133) for channel FM 4
	dc.b $35, $23, $54	; Set frequency '9044' (octave 4 semitone 852) for channel FM 5
; Pattern $00, Row 139; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 1
	dc.b $31, $22, $e9	; Set frequency '8937' (octave 4 semitone 745) for channel FM 2
	dc.b $32, $23, $7c	; Set frequency '9084' (octave 4 semitone 892) for channel FM 3
	dc.b $34, $24, $6e	; Set frequency '9326' (octave 4 semitone 1134) for channel FM 4
	dc.b $35, $23, $53	; Set frequency '9043' (octave 4 semitone 851) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $8d	; Set frequency '7309' (octave 3 semitone 1165) for channel FM 1
	dc.b $31, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 2
	dc.b $32, $23, $7d	; Set frequency '9085' (octave 4 semitone 893) for channel FM 3
	dc.b $34, $24, $6f	; Set frequency '9327' (octave 4 semitone 1135) for channel FM 4
	dc.b $35, $23, $52	; Set frequency '9042' (octave 4 semitone 850) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 1
	dc.b $31, $22, $eb	; Set frequency '8939' (octave 4 semitone 747) for channel FM 2
	dc.b $32, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 3
	dc.b $34, $24, $70	; Set frequency '9328' (octave 4 semitone 1136) for channel FM 4
	dc.b $35, $23, $51	; Set frequency '9041' (octave 4 semitone 849) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $8b	; Set frequency '7307' (octave 3 semitone 1163) for channel FM 1
	dc.b $31, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 2
	dc.b $32, $23, $7f	; Set frequency '9087' (octave 4 semitone 895) for channel FM 3
	dc.b $34, $24, $71	; Set frequency '9329' (octave 4 semitone 1137) for channel FM 4
	dc.b $35, $23, $50	; Set frequency '9040' (octave 4 semitone 848) for channel FM 5
; Pattern $00, Row 140; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $8a	; Set frequency '7306' (octave 3 semitone 1162) for channel FM 1
	dc.b $31, $22, $ed	; Set frequency '8941' (octave 4 semitone 749) for channel FM 2
	dc.b $32, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 3
	dc.b $34, $24, $72	; Set frequency '9330' (octave 4 semitone 1138) for channel FM 4
	dc.b $35, $23, $4f	; Set frequency '9039' (octave 4 semitone 847) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $31, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 2
	dc.b $32, $23, $81	; Set frequency '9089' (octave 4 semitone 897) for channel FM 3
	dc.b $34, $24, $73	; Set frequency '9331' (octave 4 semitone 1139) for channel FM 4
	dc.b $35, $23, $4e	; Set frequency '9038' (octave 4 semitone 846) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 1
	dc.b $31, $22, $ef	; Set frequency '8943' (octave 4 semitone 751) for channel FM 2
	dc.b $32, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 3
	dc.b $34, $24, $74	; Set frequency '9332' (octave 4 semitone 1140) for channel FM 4
	dc.b $35, $23, $4d	; Set frequency '9037' (octave 4 semitone 845) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $87	; Set frequency '7303' (octave 3 semitone 1159) for channel FM 1
	dc.b $31, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 2
	dc.b $32, $23, $83	; Set frequency '9091' (octave 4 semitone 899) for channel FM 3
	dc.b $34, $24, $75	; Set frequency '9333' (octave 4 semitone 1141) for channel FM 4
	dc.b $35, $23, $4c	; Set frequency '9036' (octave 4 semitone 844) for channel FM 5
; Pattern $00, Row 141; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 1
	dc.b $31, $22, $f1	; Set frequency '8945' (octave 4 semitone 753) for channel FM 2
	dc.b $32, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 3
	dc.b $34, $24, $76	; Set frequency '9334' (octave 4 semitone 1142) for channel FM 4
	dc.b $35, $23, $4b	; Set frequency '9035' (octave 4 semitone 843) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $85	; Set frequency '7301' (octave 3 semitone 1157) for channel FM 1
	dc.b $31, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 2
	dc.b $32, $23, $85	; Set frequency '9093' (octave 4 semitone 901) for channel FM 3
	dc.b $34, $24, $77	; Set frequency '9335' (octave 4 semitone 1143) for channel FM 4
	dc.b $35, $23, $4a	; Set frequency '9034' (octave 4 semitone 842) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 1
	dc.b $31, $22, $f3	; Set frequency '8947' (octave 4 semitone 755) for channel FM 2
	dc.b $32, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 3
	dc.b $34, $24, $78	; Set frequency '9336' (octave 4 semitone 1144) for channel FM 4
	dc.b $35, $23, $49	; Set frequency '9033' (octave 4 semitone 841) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $83	; Set frequency '7299' (octave 3 semitone 1155) for channel FM 1
	dc.b $31, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 2
	dc.b $32, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 3
	dc.b $34, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 4
	dc.b $35, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 5
; Pattern $00, Row 142; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 1
	dc.b $31, $22, $f5	; Set frequency '8949' (octave 4 semitone 757) for channel FM 2
	dc.b $32, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 3
	dc.b $34, $24, $7a	; Set frequency '9338' (octave 4 semitone 1146) for channel FM 4
	dc.b $35, $23, $47	; Set frequency '9031' (octave 4 semitone 839) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $81	; Set frequency '7297' (octave 3 semitone 1153) for channel FM 1
	dc.b $31, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 2
	dc.b $32, $23, $89	; Set frequency '9097' (octave 4 semitone 905) for channel FM 3
	dc.b $34, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 4
	dc.b $35, $23, $46	; Set frequency '9030' (octave 4 semitone 838) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 1
	dc.b $31, $22, $f7	; Set frequency '8951' (octave 4 semitone 759) for channel FM 2
	dc.b $32, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 3
	dc.b $34, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 4
	dc.b $35, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 1
	dc.b $31, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 2
	dc.b $32, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 3
	dc.b $34, $24, $7d	; Set frequency '9341' (octave 4 semitone 1149) for channel FM 4
	dc.b $35, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 5
; Pattern $00, Row 143; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 1
	dc.b $31, $22, $f9	; Set frequency '8953' (octave 4 semitone 761) for channel FM 2
	dc.b $32, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 3
	dc.b $34, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 4
	dc.b $35, $23, $43	; Set frequency '9027' (octave 4 semitone 835) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 1
	dc.b $31, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 2
	dc.b $32, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 3
	dc.b $34, $24, $7f	; Set frequency '9343' (octave 4 semitone 1151) for channel FM 4
	dc.b $35, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 1
	dc.b $31, $22, $fb	; Set frequency '8955' (octave 4 semitone 763) for channel FM 2
	dc.b $32, $23, $8e	; Set frequency '9102' (octave 4 semitone 910) for channel FM 3
	dc.b $34, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 4
	dc.b $35, $23, $41	; Set frequency '9025' (octave 4 semitone 833) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 1
	dc.b $31, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 2
	dc.b $32, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 3
	dc.b $34, $24, $81	; Set frequency '9345' (octave 4 semitone 1153) for channel FM 4
	dc.b $35, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 5
; Pattern $00, Row 144; 
; Pattern $00, Row 145; 
; Pattern $00, Row 146; 
; Pattern $00, Row 147; 
; Pattern $00, Row 148; 
; Pattern $00, Row 149; 
; Pattern $00, Row 150; 
; Pattern $00, Row 151; 
	dc.b $fe, $20	; Delay
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $a0	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $13	; Note A-0 on channel FM 4
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $45, $c7	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $46, $d0	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f8, $24, $fe, $f8, $25, $03	; Set PCM rate to value 4
	dc.b $0c, $d0	; Sample 208 on channel PCM
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $c7	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $02, $00	; Set frequency '2' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e8	; Set frequency '9448' (octave 4 semitone 1256) for channel FM 5
	dc.b $3a, $03, $00	; Set frequency '3' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $c8	; Set frequency '9416' (octave 4 semitone 1224) for channel FM 5
	dc.b $3a, $04, $00	; Set frequency '4' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $a8	; Set frequency '9384' (octave 4 semitone 1192) for channel FM 5
	dc.b $3a, $05, $00	; Set frequency '5' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $88	; Set frequency '9352' (octave 4 semitone 1160) for channel FM 5
	dc.b $3a, $06, $00	; Set frequency '6' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $68	; Set frequency '9320' (octave 4 semitone 1128) for channel FM 5
	dc.b $3a, $07, $00	; Set frequency '7' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 5
	dc.b $3a, $08, $00	; Set frequency '8' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $28	; Set frequency '9256' (octave 4 semitone 1064) for channel FM 5
	dc.b $3a, $09, $00	; Set frequency '9' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $08	; Set frequency '9224' (octave 4 semitone 1032) for channel FM 5
	dc.b $3a, $0a, $00	; Set frequency '10' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 5
	dc.b $3a, $0b, $00	; Set frequency '11' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
	dc.b $3a, $0c, $00	; Set frequency '12' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $a8	; Set frequency '9128' (octave 4 semitone 936) for channel FM 5
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 5
	dc.b $3a, $0e, $00	; Set frequency '14' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $68	; Set frequency '9064' (octave 4 semitone 872) for channel FM 5
	dc.b $3a, $0f, $00	; Set frequency '15' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 5
	dc.b $3a, $00, $01	; Set frequency '16' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $04, $25	; Note D-1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 5
	dc.b $3a, $01, $01	; Set frequency '17' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $3a, $02, $01	; Set frequency '18' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 5
	dc.b $3a, $03, $01	; Set frequency '19' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 5
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 5
	dc.b $3a, $05, $01	; Set frequency '21' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 5
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ec	; Set frequency '7404' (octave 3 semitone 1260) for channel FM 5
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 5
	dc.b $3a, $08, $01	; Set frequency '24' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 5
	dc.b $3a, $09, $01	; Set frequency '25' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 5
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 5
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 5
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $2c	; Set frequency '7212' (octave 3 semitone 1068) for channel FM 5
	dc.b $3a, $0d, $01	; Set frequency '29' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0c	; Set frequency '7180' (octave 3 semitone 1036) for channel FM 5
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 5
	dc.b $3a, $0f, $01	; Set frequency '31' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 5
	dc.b $3a, $01, $02	; Set frequency '33' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $04, $0b	; Note F-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $3a, $02, $02	; Set frequency '34' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 5
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $2c	; Set frequency '6956' (octave 3 semitone 812) for channel FM 5
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $3a, $07, $02	; Set frequency '39' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 5
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ac	; Set frequency '6828' (octave 3 semitone 684) for channel FM 5
	dc.b $3a, $09, $02	; Set frequency '41' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8c	; Set frequency '6796' (octave 3 semitone 652) for channel FM 5
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f0	; Set frequency '5360' (octave 2 semitone 1264) for channel FM 5
	dc.b $3a, $0b, $02	; Set frequency '43' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $d0	; Set frequency '5328' (octave 2 semitone 1232) for channel FM 5
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $90	; Set frequency '5264' (octave 2 semitone 1168) for channel FM 5
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $70	; Set frequency '5232' (octave 2 semitone 1136) for channel FM 5
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $50	; Set frequency '5200' (octave 2 semitone 1104) for channel FM 5
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $30	; Set frequency '5168' (octave 2 semitone 1072) for channel FM 5
	dc.b $3a, $01, $03	; Set frequency '49' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $10	; Set frequency '5136' (octave 2 semitone 1040) for channel FM 5
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $f0	; Set frequency '5104' (octave 2 semitone 1008) for channel FM 5
	dc.b $3a, $03, $03	; Set frequency '51' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $d0	; Set frequency '5072' (octave 2 semitone 976) for channel FM 5
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $b0	; Set frequency '5040' (octave 2 semitone 944) for channel FM 5
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $90	; Set frequency '5008' (octave 2 semitone 912) for channel FM 5
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $70	; Set frequency '4976' (octave 2 semitone 880) for channel FM 5
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $50	; Set frequency '4944' (octave 2 semitone 848) for channel FM 5
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $30	; Set frequency '4912' (octave 2 semitone 816) for channel FM 5
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $10	; Set frequency '4880' (octave 2 semitone 784) for channel FM 5
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $f0	; Set frequency '4848' (octave 2 semitone 752) for channel FM 5
	dc.b $3a, $0b, $03	; Set frequency '59' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $d0	; Set frequency '4816' (octave 2 semitone 720) for channel FM 5
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $b0	; Set frequency '4784' (octave 2 semitone 688) for channel FM 5
	dc.b $3a, $0d, $03	; Set frequency '61' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 5
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $f4	; Set frequency '3316' (octave 1 semitone 1268) for channel FM 5
	dc.b $3a, $0f, $03	; Set frequency '63' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $d4	; Set frequency '3284' (octave 1 semitone 1236) for channel FM 5
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
	dc.b $3a, $01, $04	; Set frequency '65' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $94	; Set frequency '3220' (octave 1 semitone 1172) for channel FM 5
	dc.b $3a, $02, $04	; Set frequency '66' for channel PSG 3
; Pattern $01, Row 0; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $74	; Set frequency '3188' (octave 1 semitone 1140) for channel FM 5
	dc.b $3a, $03, $04	; Set frequency '67' for channel PSG 3
; Pattern $01, Row 1; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $54	; Set frequency '3156' (octave 1 semitone 1108) for channel FM 5
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
; Pattern $01, Row 2; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $34	; Set frequency '3124' (octave 1 semitone 1076) for channel FM 5
	dc.b $3a, $05, $04	; Set frequency '69' for channel PSG 3
; Pattern $01, Row 3; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $14	; Set frequency '3092' (octave 1 semitone 1044) for channel FM 5
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
; Pattern $01, Row 4; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f4	; Set frequency '3060' (octave 1 semitone 1012) for channel FM 5
	dc.b $3a, $07, $04	; Set frequency '71' for channel PSG 3
; Pattern $01, Row 5; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $d4	; Set frequency '3028' (octave 1 semitone 980) for channel FM 5
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
; Pattern $01, Row 6; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $b4	; Set frequency '2996' (octave 1 semitone 948) for channel FM 5
	dc.b $3a, $09, $04	; Set frequency '73' for channel PSG 3
; Pattern $01, Row 7; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $94	; Set frequency '2964' (octave 1 semitone 916) for channel FM 5
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
; Pattern $01, Row 8; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $74	; Set frequency '2932' (octave 1 semitone 884) for channel FM 5
	dc.b $3a, $0b, $04	; Set frequency '75' for channel PSG 3
; Pattern $01, Row 9; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $54	; Set frequency '2900' (octave 1 semitone 852) for channel FM 5
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $01, Row 10; 
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $34	; Set frequency '2868' (octave 1 semitone 820) for channel FM 5
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
; Pattern $01, Row 11; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $14	; Set frequency '2836' (octave 1 semitone 788) for channel FM 5
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
; Pattern $01, Row 12; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $f4	; Set frequency '2804' (octave 1 semitone 756) for channel FM 5
	dc.b $3a, $0f, $04	; Set frequency '79' for channel PSG 3
; Pattern $01, Row 13; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $d4	; Set frequency '2772' (octave 1 semitone 724) for channel FM 5
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
; Pattern $01, Row 14; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b4	; Set frequency '2740' (octave 1 semitone 692) for channel FM 5
	dc.b $3a, $01, $05	; Set frequency '81' for channel PSG 3
; Pattern $01, Row 15; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $94	; Set frequency '2708' (octave 1 semitone 660) for channel FM 5
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
; Pattern $01, Row 16; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $f8	; Set frequency '1272' (octave 0 semitone 1272) for channel FM 5
	dc.b $3a, $03, $05	; Set frequency '83' for channel PSG 3
; Pattern $01, Row 17; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d8	; Set frequency '1240' (octave 0 semitone 1240) for channel FM 5
	dc.b $3a, $04, $05	; Set frequency '84' for channel PSG 3
; Pattern $01, Row 18; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $b8	; Set frequency '1208' (octave 0 semitone 1208) for channel FM 5
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
; Pattern $01, Row 19; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $98	; Set frequency '1176' (octave 0 semitone 1176) for channel FM 5
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
; Pattern $01, Row 20; 
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $78	; Set frequency '1144' (octave 0 semitone 1144) for channel FM 5
	dc.b $3a, $07, $05	; Set frequency '87' for channel PSG 3
; Pattern $01, Row 21; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $58	; Set frequency '1112' (octave 0 semitone 1112) for channel FM 5
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
; Pattern $01, Row 22; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $38	; Set frequency '1080' (octave 0 semitone 1080) for channel FM 5
	dc.b $3a, $09, $05	; Set frequency '89' for channel PSG 3
; Pattern $01, Row 23; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $18	; Set frequency '1048' (octave 0 semitone 1048) for channel FM 5
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
; Pattern $01, Row 24; 
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f8	; Set frequency '1016' (octave 0 semitone 1016) for channel FM 5
	dc.b $3a, $0b, $05	; Set frequency '91' for channel PSG 3
; Pattern $01, Row 25; 
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d8	; Set frequency '984' (octave 0 semitone 984) for channel FM 5
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
; Pattern $01, Row 26; 
	dc.b $25, $3d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $b8	; Set frequency '952' (octave 0 semitone 952) for channel FM 5
	dc.b $3a, $0d, $05	; Set frequency '93' for channel PSG 3
; Pattern $01, Row 27; 
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $98	; Set frequency '920' (octave 0 semitone 920) for channel FM 5
	dc.b $3a, $0e, $05	; Set frequency '94' for channel PSG 3
; Pattern $01, Row 28; 
	dc.b $25, $40	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $78	; Set frequency '888' (octave 0 semitone 888) for channel FM 5
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $01, Row 29; 
	dc.b $25, $42	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $58	; Set frequency '856' (octave 0 semitone 856) for channel FM 5
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
; Pattern $01, Row 30; 
	dc.b $25, $44	; Set volume for channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $38	; Set frequency '824' (octave 0 semitone 824) for channel FM 5
	dc.b $3a, $01, $06	; Set frequency '97' for channel PSG 3
; Pattern $01, Row 31; 
	dc.b $25, $46	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $18	; Set frequency '792' (octave 0 semitone 792) for channel FM 5
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
; Pattern $01, Row 32; 
	dc.b $25, $47	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $f8	; Set frequency '760' (octave 0 semitone 760) for channel FM 5
	dc.b $3a, $03, $06	; Set frequency '99' for channel PSG 3
; Pattern $01, Row 33; 
	dc.b $25, $49	; Set volume for channel FM 5
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d8	; Set frequency '728' (octave 0 semitone 728) for channel FM 5
	dc.b $3a, $04, $06	; Set frequency '100' for channel PSG 3
; Pattern $01, Row 34; 
	dc.b $25, $4b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $b8	; Set frequency '696' (octave 0 semitone 696) for channel FM 5
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $01, Row 35; 
	dc.b $25, $4d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $98	; Set frequency '664' (octave 0 semitone 664) for channel FM 5
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
; Pattern $01, Row 36; 
	dc.b $25, $4f	; Set volume for channel FM 5
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $3a, $07, $06	; Set frequency '103' for channel PSG 3
; Pattern $01, Row 37; 
	dc.b $25, $50	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
; Pattern $01, Row 38; 
	dc.b $25, $52	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $06	; Set frequency '105' for channel PSG 3
; Pattern $01, Row 39; 
	dc.b $25, $54	; Set volume for channel FM 5
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
; Pattern $01, Row 40; 
	dc.b $25, $56	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
; Pattern $01, Row 41; 
	dc.b $25, $58	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
; Pattern $01, Row 42; 
	dc.b $25, $5a	; Set volume for channel FM 5
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $06	; Set frequency '109' for channel PSG 3
; Pattern $01, Row 43; 
	dc.b $25, $5b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
; Pattern $01, Row 44; 
	dc.b $25, $5d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
; Pattern $01, Row 45; 
	dc.b $25, $5f	; Set volume for channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
; Pattern $01, Row 46; 
	dc.b $25, $61	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
; Pattern $01, Row 47; 
	dc.b $25, $63	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
; Pattern $01, Row 48; 
	dc.b $25, $64	; Set volume for channel FM 5
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
; Pattern $01, Row 49; 
	dc.b $25, $66	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
; Pattern $01, Row 50; 
	dc.b $25, $68	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
; Pattern $01, Row 51; 
	dc.b $25, $6a	; Set volume for channel FM 5
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
; Pattern $01, Row 52; 
	dc.b $25, $6c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $07	; Set frequency '119' for channel PSG 3
; Pattern $01, Row 53; 
	dc.b $25, $6d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
; Pattern $01, Row 54; 
	dc.b $25, $6f	; Set volume for channel FM 5
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $07	; Set frequency '121' for channel PSG 3
; Pattern $01, Row 55; 
	dc.b $25, $71	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
; Pattern $01, Row 56; 
	dc.b $25, $73	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
; Pattern $01, Row 57; 
	dc.b $25, $75	; Set volume for channel FM 5
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
; Pattern $01, Row 58; 
	dc.b $25, $76	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
; Pattern $01, Row 59; 
	dc.b $25, $78	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
; Pattern $01, Row 60; 
	dc.b $25, $7a	; Set volume for channel FM 5
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
; Pattern $01, Row 61; 
	dc.b $25, $7c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
; Pattern $01, Row 62; 
	dc.b $25, $7e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $08	; Set frequency '129' for channel PSG 3
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
	dc.b $ff	; The End

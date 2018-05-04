	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $35	; Set instrument for channel FM 6
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $f6, $77	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $93	; Note A-4 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $26, $2c	; Set volume for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $26, $29	; Set volume for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $03	; Delay
	dc.b $26, $25	; Set volume for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $03	; Delay
	dc.b $26, $22	; Set volume for channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $36, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $43	; Set frequency '9283' (octave 4 semitone 1091) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4d	; Set frequency '9293' (octave 4 semitone 1101) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $52	; Set frequency '9298' (octave 4 semitone 1106) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $57	; Set frequency '9303' (octave 4 semitone 1111) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5c	; Set frequency '9308' (octave 4 semitone 1116) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $66	; Set frequency '9318' (octave 4 semitone 1126) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6b	; Set frequency '9323' (octave 4 semitone 1131) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $70	; Set frequency '9328' (octave 4 semitone 1136) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $75	; Set frequency '9333' (octave 4 semitone 1141) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7a	; Set frequency '9338' (octave 4 semitone 1146) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7f	; Set frequency '9343' (octave 4 semitone 1151) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
	dc.b $fe, $09	; Delay
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $37	; Set frequency '9271' (octave 4 semitone 1079) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $35	; Set frequency '9269' (octave 4 semitone 1077) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $34	; Set frequency '9268' (octave 4 semitone 1076) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $33	; Set frequency '9267' (octave 4 semitone 1075) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $32	; Set frequency '9266' (octave 4 semitone 1074) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $31	; Set frequency '9265' (octave 4 semitone 1073) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $30	; Set frequency '9264' (octave 4 semitone 1072) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2f	; Set frequency '9263' (octave 4 semitone 1071) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2e	; Set frequency '9262' (octave 4 semitone 1070) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2d	; Set frequency '9261' (octave 4 semitone 1069) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2c	; Set frequency '9260' (octave 4 semitone 1068) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2b	; Set frequency '9259' (octave 4 semitone 1067) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2a	; Set frequency '9258' (octave 4 semitone 1066) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $29	; Set frequency '9257' (octave 4 semitone 1065) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $28	; Set frequency '9256' (octave 4 semitone 1064) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $27	; Set frequency '9255' (octave 4 semitone 1063) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $26	; Set frequency '9254' (octave 4 semitone 1062) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $26, $1c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $25	; Set frequency '9253' (octave 4 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $24	; Set frequency '9252' (octave 4 semitone 1060) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $23	; Set frequency '9251' (octave 4 semitone 1059) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $26, $1d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $22	; Set frequency '9250' (octave 4 semitone 1058) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $21	; Set frequency '9249' (octave 4 semitone 1057) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1f	; Set frequency '9247' (octave 4 semitone 1055) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1d	; Set frequency '9245' (octave 4 semitone 1053) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1c	; Set frequency '9244' (octave 4 semitone 1052) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1b	; Set frequency '9243' (octave 4 semitone 1051) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1a	; Set frequency '9242' (octave 4 semitone 1050) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $19	; Set frequency '9241' (octave 4 semitone 1049) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $18	; Set frequency '9240' (octave 4 semitone 1048) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $17	; Set frequency '9239' (octave 4 semitone 1047) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $f6, $b7	; Set pan/AMS/FMS for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $15	; Set frequency '9237' (octave 4 semitone 1045) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $14	; Set frequency '9236' (octave 4 semitone 1044) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $12	; Set frequency '9234' (octave 4 semitone 1042) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $10	; Set frequency '9232' (octave 4 semitone 1040) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0e	; Set frequency '9230' (octave 4 semitone 1038) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0c	; Set frequency '9228' (octave 4 semitone 1036) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $08	; Set frequency '9224' (octave 4 semitone 1032) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $04	; Set frequency '9220' (octave 4 semitone 1028) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $02	; Set frequency '9218' (octave 4 semitone 1026) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $00	; Set frequency '9216' (octave 4 semitone 1024) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fc	; Set frequency '9212' (octave 4 semitone 1020) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fa	; Set frequency '9210' (octave 4 semitone 1018) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f6	; Set frequency '9206' (octave 4 semitone 1014) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $26, $25	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f4	; Set frequency '9204' (octave 4 semitone 1012) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f2	; Set frequency '9202' (octave 4 semitone 1010) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f0	; Set frequency '9200' (octave 4 semitone 1008) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ec	; Set frequency '9196' (octave 4 semitone 1004) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ea	; Set frequency '9194' (octave 4 semitone 1002) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e6	; Set frequency '9190' (octave 4 semitone 998) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $26, $2d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $dc	; Set frequency '9180' (octave 4 semitone 988) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d8	; Set frequency '9176' (octave 4 semitone 984) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d6	; Set frequency '9174' (octave 4 semitone 982) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c4	; Set frequency '9156' (octave 4 semitone 964) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c2	; Set frequency '9154' (octave 4 semitone 962) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 6
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $ff	; The End

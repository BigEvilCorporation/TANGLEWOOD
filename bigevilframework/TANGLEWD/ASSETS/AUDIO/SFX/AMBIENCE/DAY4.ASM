	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $46, $9a	; Set instrument for channel FM 6
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $f6, $77	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $93	; Note A-4 on channel FM 6
	dc.b $fe, $03	; Delay
; Pattern $00, Row 1; 
	dc.b $26, $2c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $25	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $26, $22	; Set volume for channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $36, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 6
	dc.b $36, $24, $3d	; Set frequency '9277' (octave 4 semitone 1085) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $43	; Set frequency '9283' (octave 4 semitone 1091) for channel FM 6
	dc.b $36, $24, $42	; Set frequency '9282' (octave 4 semitone 1090) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 6
	dc.b $36, $24, $47	; Set frequency '9287' (octave 4 semitone 1095) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4d	; Set frequency '9293' (octave 4 semitone 1101) for channel FM 6
	dc.b $36, $24, $4c	; Set frequency '9292' (octave 4 semitone 1100) for channel FM 6
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
	dc.b $36, $24, $6c	; Set frequency '9324' (octave 4 semitone 1132) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $70	; Set frequency '9328' (octave 4 semitone 1136) for channel FM 6
	dc.b $36, $24, $71	; Set frequency '9329' (octave 4 semitone 1137) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $75	; Set frequency '9333' (octave 4 semitone 1141) for channel FM 6
	dc.b $36, $24, $76	; Set frequency '9334' (octave 4 semitone 1142) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7a	; Set frequency '9338' (octave 4 semitone 1146) for channel FM 6
	dc.b $36, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7f	; Set frequency '9343' (octave 4 semitone 1151) for channel FM 6
	dc.b $36, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 6
	dc.b $36, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
	dc.b $36, $24, $8a	; Set frequency '9354' (octave 4 semitone 1162) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $8a	; Set frequency '9354' (octave 4 semitone 1162) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $8a	; Set frequency '9354' (octave 4 semitone 1162) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $8a	; Set frequency '9354' (octave 4 semitone 1162) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $86	; Set frequency '9350' (octave 4 semitone 1158) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $86	; Set frequency '9350' (octave 4 semitone 1158) for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $00, Row 14; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $36, $24, $88	; Set frequency '9352' (octave 4 semitone 1160) for channel FM 6
	dc.b $36, $24, $8b	; Set frequency '9355' (octave 4 semitone 1163) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $87	; Set frequency '9351' (octave 4 semitone 1159) for channel FM 6
	dc.b $36, $24, $8c	; Set frequency '9356' (octave 4 semitone 1164) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $86	; Set frequency '9350' (octave 4 semitone 1158) for channel FM 6
	dc.b $36, $24, $8b	; Set frequency '9355' (octave 4 semitone 1163) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 6
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $83	; Set frequency '9347' (octave 4 semitone 1155) for channel FM 6
	dc.b $36, $24, $81	; Set frequency '9345' (octave 4 semitone 1153) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $82	; Set frequency '9346' (octave 4 semitone 1154) for channel FM 6
	dc.b $36, $24, $7d	; Set frequency '9341' (octave 4 semitone 1149) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $81	; Set frequency '9345' (octave 4 semitone 1153) for channel FM 6
	dc.b $36, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 6
	dc.b $36, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7f	; Set frequency '9343' (octave 4 semitone 1151) for channel FM 6
	dc.b $36, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 6
	dc.b $36, $24, $7f	; Set frequency '9343' (octave 4 semitone 1151) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7d	; Set frequency '9341' (octave 4 semitone 1149) for channel FM 6
	dc.b $36, $24, $81	; Set frequency '9345' (octave 4 semitone 1153) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 6
	dc.b $36, $24, $81	; Set frequency '9345' (octave 4 semitone 1153) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 6
	dc.b $36, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7a	; Set frequency '9338' (octave 4 semitone 1146) for channel FM 6
	dc.b $36, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $78	; Set frequency '9336' (octave 4 semitone 1144) for channel FM 6
	dc.b $36, $24, $74	; Set frequency '9332' (octave 4 semitone 1140) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $77	; Set frequency '9335' (octave 4 semitone 1143) for channel FM 6
	dc.b $36, $24, $72	; Set frequency '9330' (octave 4 semitone 1138) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $76	; Set frequency '9334' (octave 4 semitone 1142) for channel FM 6
	dc.b $36, $24, $71	; Set frequency '9329' (octave 4 semitone 1137) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $26, $1c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $75	; Set frequency '9333' (octave 4 semitone 1141) for channel FM 6
	dc.b $36, $24, $74	; Set frequency '9332' (octave 4 semitone 1140) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $74	; Set frequency '9332' (octave 4 semitone 1140) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $73	; Set frequency '9331' (octave 4 semitone 1139) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $26, $1d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $72	; Set frequency '9330' (octave 4 semitone 1138) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $71	; Set frequency '9329' (octave 4 semitone 1137) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $70	; Set frequency '9328' (octave 4 semitone 1136) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6f	; Set frequency '9327' (octave 4 semitone 1135) for channel FM 6
	dc.b $36, $24, $70	; Set frequency '9328' (octave 4 semitone 1136) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6e	; Set frequency '9326' (octave 4 semitone 1134) for channel FM 6
	dc.b $36, $24, $6f	; Set frequency '9327' (octave 4 semitone 1135) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6d	; Set frequency '9325' (octave 4 semitone 1133) for channel FM 6
	dc.b $36, $24, $6e	; Set frequency '9326' (octave 4 semitone 1134) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6c	; Set frequency '9324' (octave 4 semitone 1132) for channel FM 6
	dc.b $36, $24, $6d	; Set frequency '9325' (octave 4 semitone 1133) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6b	; Set frequency '9323' (octave 4 semitone 1131) for channel FM 6
	dc.b $36, $24, $6c	; Set frequency '9324' (octave 4 semitone 1132) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6a	; Set frequency '9322' (octave 4 semitone 1130) for channel FM 6
	dc.b $36, $24, $6b	; Set frequency '9323' (octave 4 semitone 1131) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $69	; Set frequency '9321' (octave 4 semitone 1129) for channel FM 6
	dc.b $36, $24, $6a	; Set frequency '9322' (octave 4 semitone 1130) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $68	; Set frequency '9320' (octave 4 semitone 1128) for channel FM 6
	dc.b $36, $24, $69	; Set frequency '9321' (octave 4 semitone 1129) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $67	; Set frequency '9319' (octave 4 semitone 1127) for channel FM 6
	dc.b $36, $24, $68	; Set frequency '9320' (octave 4 semitone 1128) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $f6, $b7	; Set pan/AMS/FMS for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $66	; Set frequency '9318' (octave 4 semitone 1126) for channel FM 6
	dc.b $36, $24, $67	; Set frequency '9319' (octave 4 semitone 1127) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $65	; Set frequency '9317' (octave 4 semitone 1125) for channel FM 6
	dc.b $36, $24, $66	; Set frequency '9318' (octave 4 semitone 1126) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $64	; Set frequency '9316' (octave 4 semitone 1124) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $62	; Set frequency '9314' (octave 4 semitone 1122) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $60	; Set frequency '9312' (octave 4 semitone 1120) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5e	; Set frequency '9310' (octave 4 semitone 1118) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5c	; Set frequency '9308' (octave 4 semitone 1116) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5a	; Set frequency '9306' (octave 4 semitone 1114) for channel FM 6
	dc.b $36, $24, $59	; Set frequency '9305' (octave 4 semitone 1113) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $58	; Set frequency '9304' (octave 4 semitone 1112) for channel FM 6
	dc.b $36, $24, $57	; Set frequency '9303' (octave 4 semitone 1111) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $56	; Set frequency '9302' (octave 4 semitone 1110) for channel FM 6
	dc.b $36, $24, $55	; Set frequency '9301' (octave 4 semitone 1109) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $54	; Set frequency '9300' (octave 4 semitone 1108) for channel FM 6
	dc.b $36, $24, $53	; Set frequency '9299' (octave 4 semitone 1107) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $52	; Set frequency '9298' (octave 4 semitone 1106) for channel FM 6
	dc.b $36, $24, $51	; Set frequency '9297' (octave 4 semitone 1105) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $50	; Set frequency '9296' (octave 4 semitone 1104) for channel FM 6
	dc.b $36, $24, $4f	; Set frequency '9295' (octave 4 semitone 1103) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4e	; Set frequency '9294' (octave 4 semitone 1102) for channel FM 6
	dc.b $36, $24, $4d	; Set frequency '9293' (octave 4 semitone 1101) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4c	; Set frequency '9292' (octave 4 semitone 1100) for channel FM 6
	dc.b $36, $24, $4b	; Set frequency '9291' (octave 4 semitone 1099) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4a	; Set frequency '9290' (octave 4 semitone 1098) for channel FM 6
	dc.b $36, $24, $49	; Set frequency '9289' (octave 4 semitone 1097) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 6
	dc.b $36, $24, $47	; Set frequency '9287' (octave 4 semitone 1095) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $46	; Set frequency '9286' (octave 4 semitone 1094) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $26, $25	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $44	; Set frequency '9284' (octave 4 semitone 1092) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $42	; Set frequency '9282' (octave 4 semitone 1090) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $40	; Set frequency '9280' (octave 4 semitone 1088) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3c	; Set frequency '9276' (octave 4 semitone 1084) for channel FM 6
	dc.b $36, $24, $3d	; Set frequency '9277' (octave 4 semitone 1085) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3a	; Set frequency '9274' (octave 4 semitone 1082) for channel FM 6
	dc.b $36, $24, $3b	; Set frequency '9275' (octave 4 semitone 1083) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $38	; Set frequency '9272' (octave 4 semitone 1080) for channel FM 6
	dc.b $36, $24, $39	; Set frequency '9273' (octave 4 semitone 1081) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 6
	dc.b $36, $24, $37	; Set frequency '9271' (octave 4 semitone 1079) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $34	; Set frequency '9268' (octave 4 semitone 1076) for channel FM 6
	dc.b $36, $24, $35	; Set frequency '9269' (octave 4 semitone 1077) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $32	; Set frequency '9266' (octave 4 semitone 1074) for channel FM 6
	dc.b $36, $24, $33	; Set frequency '9267' (octave 4 semitone 1075) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $30	; Set frequency '9264' (octave 4 semitone 1072) for channel FM 6
	dc.b $36, $24, $31	; Set frequency '9265' (octave 4 semitone 1073) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2e	; Set frequency '9262' (octave 4 semitone 1070) for channel FM 6
	dc.b $36, $24, $2f	; Set frequency '9263' (octave 4 semitone 1071) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $26, $2d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2c	; Set frequency '9260' (octave 4 semitone 1068) for channel FM 6
	dc.b $36, $24, $2d	; Set frequency '9261' (octave 4 semitone 1069) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2a	; Set frequency '9258' (octave 4 semitone 1066) for channel FM 6
	dc.b $36, $24, $2b	; Set frequency '9259' (octave 4 semitone 1067) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $28	; Set frequency '9256' (octave 4 semitone 1064) for channel FM 6
	dc.b $36, $24, $29	; Set frequency '9257' (octave 4 semitone 1065) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $26	; Set frequency '9254' (octave 4 semitone 1062) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $24	; Set frequency '9252' (octave 4 semitone 1060) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $22	; Set frequency '9250' (octave 4 semitone 1058) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1c	; Set frequency '9244' (octave 4 semitone 1052) for channel FM 6
	dc.b $36, $24, $1b	; Set frequency '9243' (octave 4 semitone 1051) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1a	; Set frequency '9242' (octave 4 semitone 1050) for channel FM 6
	dc.b $36, $24, $19	; Set frequency '9241' (octave 4 semitone 1049) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $18	; Set frequency '9240' (octave 4 semitone 1048) for channel FM 6
	dc.b $36, $24, $17	; Set frequency '9239' (octave 4 semitone 1047) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 6
	dc.b $36, $24, $15	; Set frequency '9237' (octave 4 semitone 1045) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

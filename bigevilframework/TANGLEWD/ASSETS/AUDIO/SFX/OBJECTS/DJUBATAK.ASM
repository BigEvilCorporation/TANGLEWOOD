	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $93	; Note A-4 on channel FM 6
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $4b, $c2	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $05, $00	; Set frequency '5' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 6
	dc.b $3a, $0a, $00	; Set frequency '10' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $79	; Set frequency '9081' (octave 4 semitone 889) for channel FM 6
	dc.b $3a, $0f, $00	; Set frequency '15' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $19	; Set frequency '8985' (octave 4 semitone 793) for channel FM 6
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b9	; Set frequency '8889' (octave 4 semitone 697) for channel FM 6
	dc.b $3a, $09, $01	; Set frequency '25' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $45, $c1	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $77	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $36, $1c, $dd	; Set frequency '7389' (octave 3 semitone 1245) for channel FM 6
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 5
	dc.b $35, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 5
	dc.b $36, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 6
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $36, $1c, $1d	; Set frequency '7197' (octave 3 semitone 1053) for channel FM 6
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 5
	dc.b $35, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 5
	dc.b $36, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 6
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $36, $1b, $5d	; Set frequency '7005' (octave 3 semitone 861) for channel FM 6
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $35, $1a, $af	; Set frequency '6831' (octave 3 semitone 687) for channel FM 5
	dc.b $36, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 6
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $dd	; Set frequency '5341' (octave 2 semitone 1245) for channel FM 5
	dc.b $35, $14, $e4	; Set frequency '5348' (octave 2 semitone 1252) for channel FM 5
	dc.b $36, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 6
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8d	; Set frequency '5261' (octave 2 semitone 1165) for channel FM 5
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 6
	dc.b $3a, $01, $04	; Set frequency '65' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3d	; Set frequency '5181' (octave 2 semitone 1085) for channel FM 5
	dc.b $36, $14, $61	; Set frequency '5217' (octave 2 semitone 1121) for channel FM 6
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ed	; Set frequency '5101' (octave 2 semitone 1005) for channel FM 5
	dc.b $35, $13, $e7	; Set frequency '5095' (octave 2 semitone 999) for channel FM 5
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
	dc.b $3a, $0b, $04	; Set frequency '75' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 5
	dc.b $35, $13, $96	; Set frequency '5014' (octave 2 semitone 918) for channel FM 5
	dc.b $36, $13, $a1	; Set frequency '5025' (octave 2 semitone 929) for channel FM 6
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $4d	; Set frequency '4941' (octave 2 semitone 845) for channel FM 5
	dc.b $35, $13, $49	; Set frequency '4937' (octave 2 semitone 841) for channel FM 5
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $fd	; Set frequency '4861' (octave 2 semitone 765) for channel FM 5
	dc.b $35, $12, $fe	; Set frequency '4862' (octave 2 semitone 766) for channel FM 5
	dc.b $36, $12, $e1	; Set frequency '4833' (octave 2 semitone 737) for channel FM 6
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ad	; Set frequency '4781' (octave 2 semitone 685) for channel FM 5
	dc.b $35, $12, $b3	; Set frequency '4787' (octave 2 semitone 691) for channel FM 5
	dc.b $36, $0d, $05	; Set frequency '3333' (octave 1 semitone 1285) for channel FM 6
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $e1	; Set frequency '3297' (octave 1 semitone 1249) for channel FM 5
	dc.b $35, $0c, $e8	; Set frequency '3304' (octave 1 semitone 1256) for channel FM 5
	dc.b $36, $0c, $a5	; Set frequency '3237' (octave 1 semitone 1189) for channel FM 6
	dc.b $3a, $04, $06	; Set frequency '100' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $91	; Set frequency '3217' (octave 1 semitone 1169) for channel FM 5
	dc.b $35, $0c, $95	; Set frequency '3221' (octave 1 semitone 1173) for channel FM 5
	dc.b $36, $0c, $45	; Set frequency '3141' (octave 1 semitone 1093) for channel FM 6
	dc.b $3a, $09, $06	; Set frequency '105' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $41	; Set frequency '3137' (octave 1 semitone 1089) for channel FM 5
	dc.b $35, $0c, $40	; Set frequency '3136' (octave 1 semitone 1088) for channel FM 5
	dc.b $36, $0b, $e5	; Set frequency '3045' (octave 1 semitone 997) for channel FM 6
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f1	; Set frequency '3057' (octave 1 semitone 1009) for channel FM 5
	dc.b $35, $0b, $eb	; Set frequency '3051' (octave 1 semitone 1003) for channel FM 5
	dc.b $36, $0b, $85	; Set frequency '2949' (octave 1 semitone 901) for channel FM 6
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $a1	; Set frequency '2977' (octave 1 semitone 929) for channel FM 5
	dc.b $35, $0b, $9a	; Set frequency '2970' (octave 1 semitone 922) for channel FM 5
	dc.b $36, $0b, $25	; Set frequency '2853' (octave 1 semitone 805) for channel FM 6
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $51	; Set frequency '2897' (octave 1 semitone 849) for channel FM 5
	dc.b $35, $0b, $4e	; Set frequency '2894' (octave 1 semitone 846) for channel FM 5
	dc.b $36, $0a, $c5	; Set frequency '2757' (octave 1 semitone 709) for channel FM 6
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $01	; Set frequency '2817' (octave 1 semitone 769) for channel FM 5
	dc.b $35, $0b, $03	; Set frequency '2819' (octave 1 semitone 771) for channel FM 5
	dc.b $36, $04, $e9	; Set frequency '1257' (octave 0 semitone 1257) for channel FM 6
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b1	; Set frequency '2737' (octave 1 semitone 689) for channel FM 5
	dc.b $35, $0a, $b8	; Set frequency '2744' (octave 1 semitone 696) for channel FM 5
	dc.b $36, $04, $89	; Set frequency '1161' (octave 0 semitone 1161) for channel FM 6
	dc.b $3a, $07, $08	; Set frequency '135' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $e5	; Set frequency '1253' (octave 0 semitone 1253) for channel FM 5
	dc.b $35, $04, $ec	; Set frequency '1260' (octave 0 semitone 1260) for channel FM 5
	dc.b $36, $04, $29	; Set frequency '1065' (octave 0 semitone 1065) for channel FM 6
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $95	; Set frequency '1173' (octave 0 semitone 1173) for channel FM 5
	dc.b $35, $04, $98	; Set frequency '1176' (octave 0 semitone 1176) for channel FM 5
	dc.b $36, $03, $c9	; Set frequency '969' (octave 0 semitone 969) for channel FM 6
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $45	; Set frequency '1093' (octave 0 semitone 1093) for channel FM 5
	dc.b $35, $04, $43	; Set frequency '1091' (octave 0 semitone 1091) for channel FM 5
	dc.b $36, $03, $69	; Set frequency '873' (octave 0 semitone 873) for channel FM 6
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f5	; Set frequency '1013' (octave 0 semitone 1013) for channel FM 5
	dc.b $35, $03, $ee	; Set frequency '1006' (octave 0 semitone 1006) for channel FM 5
	dc.b $3a, $0b, $09	; Set frequency '155' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $a5	; Set frequency '933' (octave 0 semitone 933) for channel FM 5
	dc.b $35, $03, $9e	; Set frequency '926' (octave 0 semitone 926) for channel FM 5
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $55	; Set frequency '853' (octave 0 semitone 853) for channel FM 5
	dc.b $35, $03, $52	; Set frequency '850' (octave 0 semitone 850) for channel FM 5
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $05	; Set frequency '773' (octave 0 semitone 773) for channel FM 5
	dc.b $35, $03, $08	; Set frequency '776' (octave 0 semitone 776) for channel FM 5
	dc.b $3a, $0a, $0a	; Set frequency '170' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $0a	; Set frequency '175' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0b	; Set frequency '180' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $0b	; Set frequency '185' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $0b	; Set frequency '190' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
	dc.b $fe, $14	; Delay
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $45, $bc	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
	dc.b $46, $bb	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $c1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $25	; Note D-1 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $e4	; Set frequency '2788' (octave 1 semitone 740) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $f6	; Set frequency '2806' (octave 1 semitone 758) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $08	; Set frequency '2824' (octave 1 semitone 776) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1a	; Set frequency '2842' (octave 1 semitone 794) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $2c	; Set frequency '2860' (octave 1 semitone 812) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $05, $4b	; Note F-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $50	; Set frequency '2896' (octave 1 semitone 848) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $62	; Set frequency '2914' (octave 1 semitone 866) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $74	; Set frequency '2932' (octave 1 semitone 884) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $86	; Set frequency '2950' (octave 1 semitone 902) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $98	; Set frequency '2968' (octave 1 semitone 920) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $aa	; Set frequency '2986' (octave 1 semitone 938) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bc	; Set frequency '3004' (octave 1 semitone 956) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ce	; Set frequency '3022' (octave 1 semitone 974) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $e0	; Set frequency '3040' (octave 1 semitone 992) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $f2	; Set frequency '3058' (octave 1 semitone 1010) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $04	; Set frequency '3076' (octave 1 semitone 1028) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $16	; Set frequency '3094' (octave 1 semitone 1046) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $28	; Set frequency '3112' (octave 1 semitone 1064) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3a	; Set frequency '3130' (octave 1 semitone 1082) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $4c	; Set frequency '3148' (octave 1 semitone 1100) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $70	; Set frequency '3184' (octave 1 semitone 1136) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $82	; Set frequency '3202' (octave 1 semitone 1154) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $94	; Set frequency '3220' (octave 1 semitone 1172) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a6	; Set frequency '3238' (octave 1 semitone 1190) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $dc	; Set frequency '3292' (octave 1 semitone 1244) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ee	; Set frequency '3310' (octave 1 semitone 1262) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $00	; Set frequency '3328' (octave 1 semitone 1280) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a0	; Set frequency '4768' (octave 2 semitone 672) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b2	; Set frequency '4786' (octave 2 semitone 690) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c4	; Set frequency '4804' (octave 2 semitone 708) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d6	; Set frequency '4822' (octave 2 semitone 726) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e8	; Set frequency '4840' (octave 2 semitone 744) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $fa	; Set frequency '4858' (octave 2 semitone 762) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $30	; Set frequency '4912' (octave 2 semitone 816) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $42	; Set frequency '4930' (octave 2 semitone 834) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $54	; Set frequency '4948' (octave 2 semitone 852) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $66	; Set frequency '4966' (octave 2 semitone 870) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $78	; Set frequency '4984' (octave 2 semitone 888) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8a	; Set frequency '5002' (octave 2 semitone 906) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9c	; Set frequency '5020' (octave 2 semitone 924) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ae	; Set frequency '5038' (octave 2 semitone 942) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d2	; Set frequency '5074' (octave 2 semitone 978) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e4	; Set frequency '5092' (octave 2 semitone 996) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f6	; Set frequency '5110' (octave 2 semitone 1014) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $08	; Set frequency '5128' (octave 2 semitone 1032) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1a	; Set frequency '5146' (octave 2 semitone 1050) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $2c	; Set frequency '5164' (octave 2 semitone 1068) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $50	; Set frequency '5200' (octave 2 semitone 1104) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $62	; Set frequency '5218' (octave 2 semitone 1122) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $74	; Set frequency '5236' (octave 2 semitone 1140) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $86	; Set frequency '5254' (octave 2 semitone 1158) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $98	; Set frequency '5272' (octave 2 semitone 1176) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $aa	; Set frequency '5290' (octave 2 semitone 1194) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $ce	; Set frequency '5326' (octave 2 semitone 1230) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $e0	; Set frequency '5344' (octave 2 semitone 1248) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $92	; Set frequency '6802' (octave 3 semitone 658) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b6	; Set frequency '6838' (octave 3 semitone 694) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 6
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $18	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

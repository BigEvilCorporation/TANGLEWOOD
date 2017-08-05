	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $45, $51	; Set instrument for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
	dc.b $46, $50	; Set instrument for channel FM 6
	dc.b $06, $25	; Note D-1 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $e4	; Set frequency '2788' (octave 1 semitone 740) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $f6	; Set frequency '2806' (octave 1 semitone 758) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $08	; Set frequency '2824' (octave 1 semitone 776) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1a	; Set frequency '2842' (octave 1 semitone 794) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $2c	; Set frequency '2860' (octave 1 semitone 812) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $05, $4b	; Note F-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $50	; Set frequency '2896' (octave 1 semitone 848) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $62	; Set frequency '2914' (octave 1 semitone 866) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $74	; Set frequency '2932' (octave 1 semitone 884) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $86	; Set frequency '2950' (octave 1 semitone 902) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $98	; Set frequency '2968' (octave 1 semitone 920) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $aa	; Set frequency '2986' (octave 1 semitone 938) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bc	; Set frequency '3004' (octave 1 semitone 956) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ce	; Set frequency '3022' (octave 1 semitone 974) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $e0	; Set frequency '3040' (octave 1 semitone 992) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $f2	; Set frequency '3058' (octave 1 semitone 1010) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $04	; Set frequency '3076' (octave 1 semitone 1028) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $16	; Set frequency '3094' (octave 1 semitone 1046) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $28	; Set frequency '3112' (octave 1 semitone 1064) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3a	; Set frequency '3130' (octave 1 semitone 1082) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $4c	; Set frequency '3148' (octave 1 semitone 1100) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $70	; Set frequency '3184' (octave 1 semitone 1136) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $82	; Set frequency '3202' (octave 1 semitone 1154) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $94	; Set frequency '3220' (octave 1 semitone 1172) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a6	; Set frequency '3238' (octave 1 semitone 1190) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $cc	; Set frequency '4812' (octave 2 semitone 716) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f0	; Set frequency '4848' (octave 2 semitone 752) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $02	; Set frequency '4866' (octave 2 semitone 770) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $14	; Set frequency '4884' (octave 2 semitone 788) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $26	; Set frequency '4902' (octave 2 semitone 806) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $38	; Set frequency '4920' (octave 2 semitone 824) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $4a	; Set frequency '4938' (octave 2 semitone 842) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $5c	; Set frequency '4956' (octave 2 semitone 860) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $6e	; Set frequency '4974' (octave 2 semitone 878) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $80	; Set frequency '4992' (octave 2 semitone 896) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $92	; Set frequency '5010' (octave 2 semitone 914) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a4	; Set frequency '5028' (octave 2 semitone 932) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b6	; Set frequency '5046' (octave 2 semitone 950) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $da	; Set frequency '5082' (octave 2 semitone 986) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ec	; Set frequency '5100' (octave 2 semitone 1004) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $10	; Set frequency '5136' (octave 2 semitone 1040) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $22	; Set frequency '5154' (octave 2 semitone 1058) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $34	; Set frequency '5172' (octave 2 semitone 1076) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $46	; Set frequency '5190' (octave 2 semitone 1094) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $58	; Set frequency '5208' (octave 2 semitone 1112) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $6a	; Set frequency '5226' (octave 2 semitone 1130) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $7c	; Set frequency '5244' (octave 2 semitone 1148) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a0	; Set frequency '5280' (octave 2 semitone 1184) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ba	; Set frequency '6842' (octave 3 semitone 698) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $38	; Set frequency '6968' (octave 3 semitone 824) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 6
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

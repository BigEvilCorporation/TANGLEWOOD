	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $c0	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $93	; Note A-4 on channel FM 6
	dc.b $4b, $c1	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $79	; Set frequency '9081' (octave 4 semitone 889) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $19	; Set frequency '8985' (octave 4 semitone 793) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b9	; Set frequency '8889' (octave 4 semitone 697) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $45, $c0	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $77	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 5
	dc.b $35, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 5
	dc.b $36, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
	dc.b $36, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 5
	dc.b $35, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 5
	dc.b $36, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
	dc.b $35, $1a, $ac	; Set frequency '6828' (octave 3 semitone 684) for channel FM 5
	dc.b $36, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $35, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 5
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $6e	; Set frequency '5230' (octave 2 semitone 1134) for channel FM 5
	dc.b $35, $14, $70	; Set frequency '5232' (octave 2 semitone 1136) for channel FM 5
	dc.b $36, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 5
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ce	; Set frequency '5070' (octave 2 semitone 974) for channel FM 5
	dc.b $35, $13, $cb	; Set frequency '5067' (octave 2 semitone 971) for channel FM 5
	dc.b $36, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 5
	dc.b $35, $13, $7b	; Set frequency '4987' (octave 2 semitone 891) for channel FM 5
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $2e	; Set frequency '4910' (octave 2 semitone 814) for channel FM 5
	dc.b $35, $13, $2c	; Set frequency '4908' (octave 2 semitone 812) for channel FM 5
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 5
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 5
	dc.b $35, $12, $91	; Set frequency '4753' (octave 2 semitone 657) for channel FM 5
	dc.b $36, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $36, $0b, $fe	; Set frequency '3070' (octave 1 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $6e	; Set frequency '3182' (octave 1 semitone 1134) for channel FM 5
	dc.b $35, $0c, $70	; Set frequency '3184' (octave 1 semitone 1136) for channel FM 5
	dc.b $36, $0b, $9e	; Set frequency '2974' (octave 1 semitone 926) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 5
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ce	; Set frequency '3022' (octave 1 semitone 974) for channel FM 5
	dc.b $35, $0b, $cb	; Set frequency '3019' (octave 1 semitone 971) for channel FM 5
	dc.b $36, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 5
	dc.b $35, $0b, $7b	; Set frequency '2939' (octave 1 semitone 891) for channel FM 5
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $2e	; Set frequency '2862' (octave 1 semitone 814) for channel FM 5
	dc.b $35, $0b, $2d	; Set frequency '2861' (octave 1 semitone 813) for channel FM 5
	dc.b $36, $04, $5e	; Set frequency '1118' (octave 0 semitone 1118) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 5
	dc.b $35, $0a, $df	; Set frequency '2783' (octave 1 semitone 735) for channel FM 5
	dc.b $36, $03, $fe	; Set frequency '1022' (octave 0 semitone 1022) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $8e	; Set frequency '2702' (octave 1 semitone 654) for channel FM 5
	dc.b $35, $0a, $91	; Set frequency '2705' (octave 1 semitone 657) for channel FM 5
	dc.b $36, $03, $9e	; Set frequency '926' (octave 0 semitone 926) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $35, $0a, $84	; Set frequency '2692' (octave 1 semitone 644) for channel FM 5
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $6e	; Set frequency '1134' (octave 0 semitone 1134) for channel FM 5
	dc.b $35, $04, $6f	; Set frequency '1135' (octave 0 semitone 1135) for channel FM 5
	dc.b $36, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 5
	dc.b $35, $04, $1d	; Set frequency '1053' (octave 0 semitone 1053) for channel FM 5
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $ce	; Set frequency '974' (octave 0 semitone 974) for channel FM 5
	dc.b $35, $03, $cb	; Set frequency '971' (octave 0 semitone 971) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 5
	dc.b $35, $03, $7b	; Set frequency '891' (octave 0 semitone 891) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $2e	; Set frequency '814' (octave 0 semitone 814) for channel FM 5
	dc.b $35, $03, $2d	; Set frequency '813' (octave 0 semitone 813) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 5
	dc.b $35, $02, $df	; Set frequency '735' (octave 0 semitone 735) for channel FM 5
; Pattern $00, Row 8; 
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 9; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
	dc.b $fe, $14	; Delay
	dc.b $ff	; The End

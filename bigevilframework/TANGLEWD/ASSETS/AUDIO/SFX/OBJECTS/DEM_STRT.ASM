	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $46, $ca	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $f6, $e1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $26, $15	; Set volume for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $cb	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $26, $11	; Set volume for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $26, $0f	; Set volume for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $26, $0d	; Set volume for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $26, $09	; Set volume for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $91	; Set frequency '4753' (octave 2 semitone 657) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $92	; Set frequency '4754' (octave 2 semitone 658) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $93	; Set frequency '4755' (octave 2 semitone 659) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $94	; Set frequency '4756' (octave 2 semitone 660) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $95	; Set frequency '4757' (octave 2 semitone 661) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $97	; Set frequency '4759' (octave 2 semitone 663) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $98	; Set frequency '4760' (octave 2 semitone 664) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $99	; Set frequency '4761' (octave 2 semitone 665) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9b	; Set frequency '4763' (octave 2 semitone 667) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a2	; Set frequency '4770' (octave 2 semitone 674) for channel FM 6
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a5	; Set frequency '4773' (octave 2 semitone 677) for channel FM 6
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 6
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ae	; Set frequency '4782' (octave 2 semitone 686) for channel FM 6
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b1	; Set frequency '4785' (octave 2 semitone 689) for channel FM 6
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b4	; Set frequency '4788' (octave 2 semitone 692) for channel FM 6
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b7	; Set frequency '4791' (octave 2 semitone 695) for channel FM 6
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 6
; Pattern $00, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bd	; Set frequency '4797' (octave 2 semitone 701) for channel FM 6
; Pattern $00, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c3	; Set frequency '4803' (octave 2 semitone 707) for channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c6	; Set frequency '4806' (octave 2 semitone 710) for channel FM 6
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c9	; Set frequency '4809' (octave 2 semitone 713) for channel FM 6
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $cc	; Set frequency '4812' (octave 2 semitone 716) for channel FM 6
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $cf	; Set frequency '4815' (octave 2 semitone 719) for channel FM 6
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d2	; Set frequency '4818' (octave 2 semitone 722) for channel FM 6
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d5	; Set frequency '4821' (octave 2 semitone 725) for channel FM 6
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d8	; Set frequency '4824' (octave 2 semitone 728) for channel FM 6
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $db	; Set frequency '4827' (octave 2 semitone 731) for channel FM 6
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e1	; Set frequency '4833' (octave 2 semitone 737) for channel FM 6
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e4	; Set frequency '4836' (octave 2 semitone 740) for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e7	; Set frequency '4839' (octave 2 semitone 743) for channel FM 6
; Pattern $00, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ea	; Set frequency '4842' (octave 2 semitone 746) for channel FM 6
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ed	; Set frequency '4845' (octave 2 semitone 749) for channel FM 6
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f0	; Set frequency '4848' (octave 2 semitone 752) for channel FM 6
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f3	; Set frequency '4851' (octave 2 semitone 755) for channel FM 6
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f6	; Set frequency '4854' (octave 2 semitone 758) for channel FM 6
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f9	; Set frequency '4857' (octave 2 semitone 761) for channel FM 6
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $fc	; Set frequency '4860' (octave 2 semitone 764) for channel FM 6
; Pattern $01, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ff	; Set frequency '4863' (octave 2 semitone 767) for channel FM 6
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $02	; Set frequency '4866' (octave 2 semitone 770) for channel FM 6
; Pattern $01, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $05	; Set frequency '4869' (octave 2 semitone 773) for channel FM 6
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $08	; Set frequency '4872' (octave 2 semitone 776) for channel FM 6
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0b	; Set frequency '4875' (octave 2 semitone 779) for channel FM 6
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0e	; Set frequency '4878' (octave 2 semitone 782) for channel FM 6
; Pattern $01, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $11	; Set frequency '4881' (octave 2 semitone 785) for channel FM 6
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $14	; Set frequency '4884' (octave 2 semitone 788) for channel FM 6
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $17	; Set frequency '4887' (octave 2 semitone 791) for channel FM 6
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1a	; Set frequency '4890' (octave 2 semitone 794) for channel FM 6
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1d	; Set frequency '4893' (octave 2 semitone 797) for channel FM 6
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 6
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $23	; Set frequency '4899' (octave 2 semitone 803) for channel FM 6
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $26	; Set frequency '4902' (octave 2 semitone 806) for channel FM 6
; Pattern $01, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $29	; Set frequency '4905' (octave 2 semitone 809) for channel FM 6
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $2c	; Set frequency '4908' (octave 2 semitone 812) for channel FM 6
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $2f	; Set frequency '4911' (octave 2 semitone 815) for channel FM 6
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $32	; Set frequency '4914' (octave 2 semitone 818) for channel FM 6
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $35	; Set frequency '4917' (octave 2 semitone 821) for channel FM 6
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $38	; Set frequency '4920' (octave 2 semitone 824) for channel FM 6
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3b	; Set frequency '4923' (octave 2 semitone 827) for channel FM 6
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 6
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $47	; Set frequency '4935' (octave 2 semitone 839) for channel FM 6
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $4a	; Set frequency '4938' (octave 2 semitone 842) for channel FM 6
; Pattern $01, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $4d	; Set frequency '4941' (octave 2 semitone 845) for channel FM 6
; Pattern $01, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $50	; Set frequency '4944' (octave 2 semitone 848) for channel FM 6
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $53	; Set frequency '4947' (octave 2 semitone 851) for channel FM 6
; Pattern $01, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $56	; Set frequency '4950' (octave 2 semitone 854) for channel FM 6
; Pattern $01, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $59	; Set frequency '4953' (octave 2 semitone 857) for channel FM 6
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $5c	; Set frequency '4956' (octave 2 semitone 860) for channel FM 6
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $5f	; Set frequency '4959' (octave 2 semitone 863) for channel FM 6
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $62	; Set frequency '4962' (octave 2 semitone 866) for channel FM 6
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $65	; Set frequency '4965' (octave 2 semitone 869) for channel FM 6
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $68	; Set frequency '4968' (octave 2 semitone 872) for channel FM 6
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $6b	; Set frequency '4971' (octave 2 semitone 875) for channel FM 6
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $6e	; Set frequency '4974' (octave 2 semitone 878) for channel FM 6
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $71	; Set frequency '4977' (octave 2 semitone 881) for channel FM 6
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $74	; Set frequency '4980' (octave 2 semitone 884) for channel FM 6
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $77	; Set frequency '4983' (octave 2 semitone 887) for channel FM 6
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7a	; Set frequency '4986' (octave 2 semitone 890) for channel FM 6
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7d	; Set frequency '4989' (octave 2 semitone 893) for channel FM 6
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $80	; Set frequency '4992' (octave 2 semitone 896) for channel FM 6
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $83	; Set frequency '4995' (octave 2 semitone 899) for channel FM 6
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $86	; Set frequency '4998' (octave 2 semitone 902) for channel FM 6
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $89	; Set frequency '5001' (octave 2 semitone 905) for channel FM 6
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8c	; Set frequency '5004' (octave 2 semitone 908) for channel FM 6
; Pattern $01, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8f	; Set frequency '5007' (octave 2 semitone 911) for channel FM 6
; Pattern $01, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $92	; Set frequency '5010' (octave 2 semitone 914) for channel FM 6
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $95	; Set frequency '5013' (octave 2 semitone 917) for channel FM 6
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $98	; Set frequency '5016' (octave 2 semitone 920) for channel FM 6
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9b	; Set frequency '5019' (octave 2 semitone 923) for channel FM 6
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 6
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a1	; Set frequency '5025' (octave 2 semitone 929) for channel FM 6
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a4	; Set frequency '5028' (octave 2 semitone 932) for channel FM 6
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a7	; Set frequency '5031' (octave 2 semitone 935) for channel FM 6
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $aa	; Set frequency '5034' (octave 2 semitone 938) for channel FM 6
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ad	; Set frequency '5037' (octave 2 semitone 941) for channel FM 6
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b0	; Set frequency '5040' (octave 2 semitone 944) for channel FM 6
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b3	; Set frequency '5043' (octave 2 semitone 947) for channel FM 6
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b6	; Set frequency '5046' (octave 2 semitone 950) for channel FM 6
; Pattern $01, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b9	; Set frequency '5049' (octave 2 semitone 953) for channel FM 6
; Pattern $01, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bc	; Set frequency '5052' (octave 2 semitone 956) for channel FM 6
; Pattern $01, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
; Pattern $01, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 6
; Pattern $01, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 6
; Pattern $01, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 6
; Pattern $02, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $cb	; Set frequency '5067' (octave 2 semitone 971) for channel FM 6
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ce	; Set frequency '5070' (octave 2 semitone 974) for channel FM 6
; Pattern $02, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d1	; Set frequency '5073' (octave 2 semitone 977) for channel FM 6
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d4	; Set frequency '5076' (octave 2 semitone 980) for channel FM 6
; Pattern $02, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d7	; Set frequency '5079' (octave 2 semitone 983) for channel FM 6
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $da	; Set frequency '5082' (octave 2 semitone 986) for channel FM 6
; Pattern $02, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $dd	; Set frequency '5085' (octave 2 semitone 989) for channel FM 6
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e0	; Set frequency '5088' (octave 2 semitone 992) for channel FM 6
; Pattern $02, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e3	; Set frequency '5091' (octave 2 semitone 995) for channel FM 6
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e6	; Set frequency '5094' (octave 2 semitone 998) for channel FM 6
; Pattern $02, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e9	; Set frequency '5097' (octave 2 semitone 1001) for channel FM 6
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ec	; Set frequency '5100' (octave 2 semitone 1004) for channel FM 6
; Pattern $02, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ef	; Set frequency '5103' (octave 2 semitone 1007) for channel FM 6
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f2	; Set frequency '5106' (octave 2 semitone 1010) for channel FM 6
; Pattern $02, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f5	; Set frequency '5109' (octave 2 semitone 1013) for channel FM 6
; Pattern $02, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f8	; Set frequency '5112' (octave 2 semitone 1016) for channel FM 6
; Pattern $02, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fb	; Set frequency '5115' (octave 2 semitone 1019) for channel FM 6
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
; Pattern $02, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $04	; Set frequency '5124' (octave 2 semitone 1028) for channel FM 6
; Pattern $02, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $07	; Set frequency '5127' (octave 2 semitone 1031) for channel FM 6
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 6
; Pattern $02, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0d	; Set frequency '5133' (octave 2 semitone 1037) for channel FM 6
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $10	; Set frequency '5136' (octave 2 semitone 1040) for channel FM 6
; Pattern $02, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $16	; Set frequency '5142' (octave 2 semitone 1046) for channel FM 6
; Pattern $02, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $19	; Set frequency '5145' (octave 2 semitone 1049) for channel FM 6
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $02, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 6
; Pattern $02, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $22	; Set frequency '5154' (octave 2 semitone 1058) for channel FM 6
; Pattern $02, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $25	; Set frequency '5157' (octave 2 semitone 1061) for channel FM 6
; Pattern $02, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $28	; Set frequency '5160' (octave 2 semitone 1064) for channel FM 6
; Pattern $02, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $2b	; Set frequency '5163' (octave 2 semitone 1067) for channel FM 6
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $2e	; Set frequency '5166' (octave 2 semitone 1070) for channel FM 6
; Pattern $02, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $31	; Set frequency '5169' (octave 2 semitone 1073) for channel FM 6
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $34	; Set frequency '5172' (octave 2 semitone 1076) for channel FM 6
; Pattern $02, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 6
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3a	; Set frequency '5178' (octave 2 semitone 1082) for channel FM 6
; Pattern $02, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3d	; Set frequency '5181' (octave 2 semitone 1085) for channel FM 6
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $40	; Set frequency '5184' (octave 2 semitone 1088) for channel FM 6
; Pattern $02, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $43	; Set frequency '5187' (octave 2 semitone 1091) for channel FM 6
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $46	; Set frequency '5190' (octave 2 semitone 1094) for channel FM 6
; Pattern $02, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $49	; Set frequency '5193' (octave 2 semitone 1097) for channel FM 6
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $4c	; Set frequency '5196' (octave 2 semitone 1100) for channel FM 6
; Pattern $02, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $4f	; Set frequency '5199' (octave 2 semitone 1103) for channel FM 6
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $52	; Set frequency '5202' (octave 2 semitone 1106) for channel FM 6
; Pattern $02, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 6
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $58	; Set frequency '5208' (octave 2 semitone 1112) for channel FM 6
; Pattern $02, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5b	; Set frequency '5211' (octave 2 semitone 1115) for channel FM 6
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 6
; Pattern $02, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $61	; Set frequency '5217' (octave 2 semitone 1121) for channel FM 6
; Pattern $02, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $64	; Set frequency '5220' (octave 2 semitone 1124) for channel FM 6
; Pattern $02, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $67	; Set frequency '5223' (octave 2 semitone 1127) for channel FM 6
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $6a	; Set frequency '5226' (octave 2 semitone 1130) for channel FM 6
; Pattern $02, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $6d	; Set frequency '5229' (octave 2 semitone 1133) for channel FM 6
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $70	; Set frequency '5232' (octave 2 semitone 1136) for channel FM 6
; Pattern $02, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $73	; Set frequency '5235' (octave 2 semitone 1139) for channel FM 6
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $76	; Set frequency '5238' (octave 2 semitone 1142) for channel FM 6
; Pattern $02, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $79	; Set frequency '5241' (octave 2 semitone 1145) for channel FM 6
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $7c	; Set frequency '5244' (octave 2 semitone 1148) for channel FM 6
; Pattern $02, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $7f	; Set frequency '5247' (octave 2 semitone 1151) for channel FM 6
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $82	; Set frequency '5250' (octave 2 semitone 1154) for channel FM 6
; Pattern $02, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $85	; Set frequency '5253' (octave 2 semitone 1157) for channel FM 6
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $88	; Set frequency '5256' (octave 2 semitone 1160) for channel FM 6
; Pattern $02, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $8b	; Set frequency '5259' (octave 2 semitone 1163) for channel FM 6
; Pattern $02, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 6
; Pattern $02, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $91	; Set frequency '5265' (octave 2 semitone 1169) for channel FM 6
; Pattern $02, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $94	; Set frequency '5268' (octave 2 semitone 1172) for channel FM 6
; Pattern $02, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $97	; Set frequency '5271' (octave 2 semitone 1175) for channel FM 6
; Pattern $02, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9a	; Set frequency '5274' (octave 2 semitone 1178) for channel FM 6
; Pattern $03, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9d	; Set frequency '5277' (octave 2 semitone 1181) for channel FM 6
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a0	; Set frequency '5280' (octave 2 semitone 1184) for channel FM 6
; Pattern $03, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a3	; Set frequency '5283' (octave 2 semitone 1187) for channel FM 6
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a6	; Set frequency '5286' (octave 2 semitone 1190) for channel FM 6
; Pattern $03, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a9	; Set frequency '5289' (octave 2 semitone 1193) for channel FM 6
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 6
; Pattern $03, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 6
; Pattern $03, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 6
; Pattern $03, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 6
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 6
; Pattern $03, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 6
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $03, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 6
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $c4	; Set frequency '5316' (octave 2 semitone 1220) for channel FM 6
; Pattern $03, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $c7	; Set frequency '5319' (octave 2 semitone 1223) for channel FM 6
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $ca	; Set frequency '5322' (octave 2 semitone 1226) for channel FM 6
; Pattern $03, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $cd	; Set frequency '5325' (octave 2 semitone 1229) for channel FM 6
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $d0	; Set frequency '5328' (octave 2 semitone 1232) for channel FM 6
; Pattern $03, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $d3	; Set frequency '5331' (octave 2 semitone 1235) for channel FM 6
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $d6	; Set frequency '5334' (octave 2 semitone 1238) for channel FM 6
; Pattern $03, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $d9	; Set frequency '5337' (octave 2 semitone 1241) for channel FM 6
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $dc	; Set frequency '5340' (octave 2 semitone 1244) for channel FM 6
; Pattern $03, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $df	; Set frequency '5343' (octave 2 semitone 1247) for channel FM 6
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $e2	; Set frequency '5346' (octave 2 semitone 1250) for channel FM 6
; Pattern $03, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $e5	; Set frequency '5349' (octave 2 semitone 1253) for channel FM 6
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $e8	; Set frequency '5352' (octave 2 semitone 1256) for channel FM 6
; Pattern $03, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $eb	; Set frequency '5355' (octave 2 semitone 1259) for channel FM 6
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $ee	; Set frequency '5358' (octave 2 semitone 1262) for channel FM 6
; Pattern $03, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $f1	; Set frequency '5361' (octave 2 semitone 1265) for channel FM 6
; Pattern $03, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 6
; Pattern $03, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 6
; Pattern $03, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 6
; Pattern $03, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 6
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 6
; Pattern $03, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 6
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 6
; Pattern $03, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 6
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $88	; Set frequency '6792' (octave 3 semitone 648) for channel FM 6
; Pattern $03, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8b	; Set frequency '6795' (octave 3 semitone 651) for channel FM 6
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8e	; Set frequency '6798' (octave 3 semitone 654) for channel FM 6
; Pattern $03, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $91	; Set frequency '6801' (octave 3 semitone 657) for channel FM 6
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 6
; Pattern $03, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 6
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 6
; Pattern $03, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 6
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 6
; Pattern $03, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 6
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 6
; Pattern $03, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 6
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ac	; Set frequency '6828' (octave 3 semitone 684) for channel FM 6
; Pattern $03, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $af	; Set frequency '6831' (octave 3 semitone 687) for channel FM 6
; Pattern $03, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b2	; Set frequency '6834' (octave 3 semitone 690) for channel FM 6
; Pattern $03, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b5	; Set frequency '6837' (octave 3 semitone 693) for channel FM 6
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b8	; Set frequency '6840' (octave 3 semitone 696) for channel FM 6
; Pattern $03, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $bb	; Set frequency '6843' (octave 3 semitone 699) for channel FM 6
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $03, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 6
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 6
; Pattern $03, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c7	; Set frequency '6855' (octave 3 semitone 711) for channel FM 6
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 6
; Pattern $03, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 6
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 6
; Pattern $03, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 6
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d6	; Set frequency '6870' (octave 3 semitone 726) for channel FM 6
; Pattern $03, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d9	; Set frequency '6873' (octave 3 semitone 729) for channel FM 6
; Pattern $03, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $dc	; Set frequency '6876' (octave 3 semitone 732) for channel FM 6
; Pattern $03, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $df	; Set frequency '6879' (octave 3 semitone 735) for channel FM 6
; Pattern $03, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e2	; Set frequency '6882' (octave 3 semitone 738) for channel FM 6
; Pattern $03, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e5	; Set frequency '6885' (octave 3 semitone 741) for channel FM 6
; Pattern $03, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e8	; Set frequency '6888' (octave 3 semitone 744) for channel FM 6
; Pattern $04, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 6
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 6
; Pattern $04, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 6
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 6
; Pattern $04, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 6
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 6
; Pattern $04, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 6
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 6
; Pattern $04, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 6
; Pattern $04, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $09	; Set frequency '6921' (octave 3 semitone 777) for channel FM 6
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
; Pattern $04, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0f	; Set frequency '6927' (octave 3 semitone 783) for channel FM 6
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 6
; Pattern $04, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 6
; Pattern $04, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1b	; Set frequency '6939' (octave 3 semitone 795) for channel FM 6
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 6
; Pattern $04, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 6
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $24	; Set frequency '6948' (octave 3 semitone 804) for channel FM 6
; Pattern $04, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $27	; Set frequency '6951' (octave 3 semitone 807) for channel FM 6
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2a	; Set frequency '6954' (octave 3 semitone 810) for channel FM 6
; Pattern $04, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2d	; Set frequency '6957' (octave 3 semitone 813) for channel FM 6
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $30	; Set frequency '6960' (octave 3 semitone 816) for channel FM 6
; Pattern $04, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $33	; Set frequency '6963' (octave 3 semitone 819) for channel FM 6
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $36	; Set frequency '6966' (octave 3 semitone 822) for channel FM 6
; Pattern $04, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $39	; Set frequency '6969' (octave 3 semitone 825) for channel FM 6
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3c	; Set frequency '6972' (octave 3 semitone 828) for channel FM 6
; Pattern $04, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3f	; Set frequency '6975' (octave 3 semitone 831) for channel FM 6
; Pattern $04, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $42	; Set frequency '6978' (octave 3 semitone 834) for channel FM 6
; Pattern $04, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $45	; Set frequency '6981' (octave 3 semitone 837) for channel FM 6
; Pattern $04, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 6
; Pattern $04, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 6
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 6
; Pattern $04, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 6
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 6
; Pattern $04, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 6
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $5a	; Set frequency '7002' (octave 3 semitone 858) for channel FM 6
; Pattern $04, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $5d	; Set frequency '7005' (octave 3 semitone 861) for channel FM 6
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $60	; Set frequency '7008' (octave 3 semitone 864) for channel FM 6
; Pattern $04, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $63	; Set frequency '7011' (octave 3 semitone 867) for channel FM 6
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $66	; Set frequency '7014' (octave 3 semitone 870) for channel FM 6
; Pattern $04, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $69	; Set frequency '7017' (octave 3 semitone 873) for channel FM 6
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 6
; Pattern $04, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $6f	; Set frequency '7023' (octave 3 semitone 879) for channel FM 6
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $72	; Set frequency '7026' (octave 3 semitone 882) for channel FM 6
; Pattern $04, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $75	; Set frequency '7029' (octave 3 semitone 885) for channel FM 6
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $78	; Set frequency '7032' (octave 3 semitone 888) for channel FM 6
; Pattern $04, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 6
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 6
; Pattern $04, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 6
; Pattern $04, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 6
; Pattern $04, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 6
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 6
; Pattern $04, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 6
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 6
; Pattern $04, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $93	; Set frequency '7059' (octave 3 semitone 915) for channel FM 6
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 6
; Pattern $04, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 6
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 6
; Pattern $04, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9f	; Set frequency '7071' (octave 3 semitone 927) for channel FM 6
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 6
; Pattern $04, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a5	; Set frequency '7077' (octave 3 semitone 933) for channel FM 6
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a8	; Set frequency '7080' (octave 3 semitone 936) for channel FM 6
; Pattern $04, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 6
; Pattern $04, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 6
; Pattern $04, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 6
; Pattern $04, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 6
; Pattern $04, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 6
; Pattern $04, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
; Pattern $05, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 6
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 6
; Pattern $05, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 6
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 6
; Pattern $05, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 6
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 6
; Pattern $05, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 6
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d2	; Set frequency '7122' (octave 3 semitone 978) for channel FM 6
; Pattern $05, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d5	; Set frequency '7125' (octave 3 semitone 981) for channel FM 6
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 6
; Pattern $05, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $db	; Set frequency '7131' (octave 3 semitone 987) for channel FM 6
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 6
; Pattern $05, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e1	; Set frequency '7137' (octave 3 semitone 993) for channel FM 6
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 6
; Pattern $05, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 6
; Pattern $05, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 6
; Pattern $05, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 6
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 6
; Pattern $05, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 6
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 6
; Pattern $05, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 6
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 6
; Pattern $05, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ff	; Set frequency '7167' (octave 3 semitone 1023) for channel FM 6
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $02	; Set frequency '7170' (octave 3 semitone 1026) for channel FM 6
; Pattern $05, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $05	; Set frequency '7173' (octave 3 semitone 1029) for channel FM 6
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 6
; Pattern $05, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0b	; Set frequency '7179' (octave 3 semitone 1035) for channel FM 6
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 6
; Pattern $05, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $11	; Set frequency '7185' (octave 3 semitone 1041) for channel FM 6
; Pattern $05, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 6
; Pattern $05, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $17	; Set frequency '7191' (octave 3 semitone 1047) for channel FM 6
; Pattern $05, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $1a	; Set frequency '7194' (octave 3 semitone 1050) for channel FM 6
; Pattern $05, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $1d	; Set frequency '7197' (octave 3 semitone 1053) for channel FM 6
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $20	; Set frequency '7200' (octave 3 semitone 1056) for channel FM 6
; Pattern $05, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $23	; Set frequency '7203' (octave 3 semitone 1059) for channel FM 6
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $26	; Set frequency '7206' (octave 3 semitone 1062) for channel FM 6
; Pattern $05, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $29	; Set frequency '7209' (octave 3 semitone 1065) for channel FM 6
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $2c	; Set frequency '7212' (octave 3 semitone 1068) for channel FM 6
; Pattern $05, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $2f	; Set frequency '7215' (octave 3 semitone 1071) for channel FM 6
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $32	; Set frequency '7218' (octave 3 semitone 1074) for channel FM 6
; Pattern $05, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $35	; Set frequency '7221' (octave 3 semitone 1077) for channel FM 6
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 6
; Pattern $05, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3b	; Set frequency '7227' (octave 3 semitone 1083) for channel FM 6
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
; Pattern $05, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $41	; Set frequency '7233' (octave 3 semitone 1089) for channel FM 6
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 6
; Pattern $05, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $47	; Set frequency '7239' (octave 3 semitone 1095) for channel FM 6
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $4a	; Set frequency '7242' (octave 3 semitone 1098) for channel FM 6
; Pattern $05, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $4d	; Set frequency '7245' (octave 3 semitone 1101) for channel FM 6
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 6
; Pattern $05, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $53	; Set frequency '7251' (octave 3 semitone 1107) for channel FM 6
; Pattern $05, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $56	; Set frequency '7254' (octave 3 semitone 1110) for channel FM 6
; Pattern $05, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $59	; Set frequency '7257' (octave 3 semitone 1113) for channel FM 6
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5c	; Set frequency '7260' (octave 3 semitone 1116) for channel FM 6
; Pattern $05, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5f	; Set frequency '7263' (octave 3 semitone 1119) for channel FM 6
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $62	; Set frequency '7266' (octave 3 semitone 1122) for channel FM 6
; Pattern $05, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $65	; Set frequency '7269' (octave 3 semitone 1125) for channel FM 6
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 6
; Pattern $05, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 6
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 6
; Pattern $05, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 6
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 6
; Pattern $05, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 6
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 6
; Pattern $05, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 6
; Pattern $05, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 6
; Pattern $05, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $83	; Set frequency '7299' (octave 3 semitone 1155) for channel FM 6
; Pattern $05, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 6
; Pattern $05, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $05, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 6
; Pattern $06, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8f	; Set frequency '7311' (octave 3 semitone 1167) for channel FM 6
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $06, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 6
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 6
; Pattern $06, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 6
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 6
; Pattern $06, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a1	; Set frequency '7329' (octave 3 semitone 1185) for channel FM 6
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 6
; Pattern $06, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a7	; Set frequency '7335' (octave 3 semitone 1191) for channel FM 6
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 6
; Pattern $06, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ad	; Set frequency '7341' (octave 3 semitone 1197) for channel FM 6
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 6
; Pattern $06, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b3	; Set frequency '7347' (octave 3 semitone 1203) for channel FM 6
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 6
; Pattern $06, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 6
; Pattern $06, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 6
; Pattern $06, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bf	; Set frequency '7359' (octave 3 semitone 1215) for channel FM 6
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $c2	; Set frequency '7362' (octave 3 semitone 1218) for channel FM 6
; Pattern $06, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $c5	; Set frequency '7365' (octave 3 semitone 1221) for channel FM 6
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 6
; Pattern $06, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 6
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ce	; Set frequency '7374' (octave 3 semitone 1230) for channel FM 6
; Pattern $06, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $d1	; Set frequency '7377' (octave 3 semitone 1233) for channel FM 6
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $d4	; Set frequency '7380' (octave 3 semitone 1236) for channel FM 6
; Pattern $06, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $d7	; Set frequency '7383' (octave 3 semitone 1239) for channel FM 6
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $da	; Set frequency '7386' (octave 3 semitone 1242) for channel FM 6
; Pattern $06, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $dd	; Set frequency '7389' (octave 3 semitone 1245) for channel FM 6
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $e0	; Set frequency '7392' (octave 3 semitone 1248) for channel FM 6
; Pattern $06, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $e3	; Set frequency '7395' (octave 3 semitone 1251) for channel FM 6
; Pattern $06, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $e6	; Set frequency '7398' (octave 3 semitone 1254) for channel FM 6
; Pattern $06, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 6
; Pattern $06, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ec	; Set frequency '7404' (octave 3 semitone 1260) for channel FM 6
; Pattern $06, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ef	; Set frequency '7407' (octave 3 semitone 1263) for channel FM 6
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f2	; Set frequency '7410' (octave 3 semitone 1266) for channel FM 6
; Pattern $06, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f5	; Set frequency '7413' (octave 3 semitone 1269) for channel FM 6
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 6
; Pattern $06, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 6
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 6
; Pattern $06, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 6
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 6
; Pattern $06, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 6
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 6
; Pattern $06, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 6
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8c	; Set frequency '8844' (octave 4 semitone 652) for channel FM 6
; Pattern $06, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8f	; Set frequency '8847' (octave 4 semitone 655) for channel FM 6
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $92	; Set frequency '8850' (octave 4 semitone 658) for channel FM 6
; Pattern $06, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $95	; Set frequency '8853' (octave 4 semitone 661) for channel FM 6
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 6
; Pattern $06, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 6
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 6
; Pattern $06, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a1	; Set frequency '8865' (octave 4 semitone 673) for channel FM 6
; Pattern $06, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 6
; Pattern $06, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a7	; Set frequency '8871' (octave 4 semitone 679) for channel FM 6
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 6
; Pattern $06, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ad	; Set frequency '8877' (octave 4 semitone 685) for channel FM 6
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b0	; Set frequency '8880' (octave 4 semitone 688) for channel FM 6
; Pattern $06, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b3	; Set frequency '8883' (octave 4 semitone 691) for channel FM 6
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b6	; Set frequency '8886' (octave 4 semitone 694) for channel FM 6
; Pattern $06, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b9	; Set frequency '8889' (octave 4 semitone 697) for channel FM 6
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $bc	; Set frequency '8892' (octave 4 semitone 700) for channel FM 6
; Pattern $06, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $bf	; Set frequency '8895' (octave 4 semitone 703) for channel FM 6
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 6
; Pattern $06, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c5	; Set frequency '8901' (octave 4 semitone 709) for channel FM 6
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 6
; Pattern $06, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $cb	; Set frequency '8907' (octave 4 semitone 715) for channel FM 6
; Pattern $06, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 6
; Pattern $06, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $d1	; Set frequency '8913' (octave 4 semitone 721) for channel FM 6
; Pattern $06, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 6
; Pattern $06, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $d7	; Set frequency '8919' (octave 4 semitone 727) for channel FM 6
; Pattern $06, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 6
; Pattern $07, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $dd	; Set frequency '8925' (octave 4 semitone 733) for channel FM 6
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 6
; Pattern $07, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e3	; Set frequency '8931' (octave 4 semitone 739) for channel FM 6
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 6
; Pattern $07, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e9	; Set frequency '8937' (octave 4 semitone 745) for channel FM 6
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 6
; Pattern $07, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ef	; Set frequency '8943' (octave 4 semitone 751) for channel FM 6
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 6
; Pattern $07, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f5	; Set frequency '8949' (octave 4 semitone 757) for channel FM 6
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 6
; Pattern $07, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $fb	; Set frequency '8955' (octave 4 semitone 763) for channel FM 6
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 6
; Pattern $07, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $01	; Set frequency '8961' (octave 4 semitone 769) for channel FM 6
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $04	; Set frequency '8964' (octave 4 semitone 772) for channel FM 6
; Pattern $07, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $07	; Set frequency '8967' (octave 4 semitone 775) for channel FM 6
; Pattern $07, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0a	; Set frequency '8970' (octave 4 semitone 778) for channel FM 6
; Pattern $07, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0d	; Set frequency '8973' (octave 4 semitone 781) for channel FM 6
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $10	; Set frequency '8976' (octave 4 semitone 784) for channel FM 6
; Pattern $07, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $13	; Set frequency '8979' (octave 4 semitone 787) for channel FM 6
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $16	; Set frequency '8982' (octave 4 semitone 790) for channel FM 6
; Pattern $07, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $19	; Set frequency '8985' (octave 4 semitone 793) for channel FM 6
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $1c	; Set frequency '8988' (octave 4 semitone 796) for channel FM 6
; Pattern $07, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $1f	; Set frequency '8991' (octave 4 semitone 799) for channel FM 6
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $22	; Set frequency '8994' (octave 4 semitone 802) for channel FM 6
; Pattern $07, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $25	; Set frequency '8997' (octave 4 semitone 805) for channel FM 6
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 6
; Pattern $07, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $2b	; Set frequency '9003' (octave 4 semitone 811) for channel FM 6
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $2e	; Set frequency '9006' (octave 4 semitone 814) for channel FM 6
; Pattern $07, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $31	; Set frequency '9009' (octave 4 semitone 817) for channel FM 6
; Pattern $07, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $34	; Set frequency '9012' (octave 4 semitone 820) for channel FM 6
; Pattern $07, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $37	; Set frequency '9015' (octave 4 semitone 823) for channel FM 6
; Pattern $07, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $3a	; Set frequency '9018' (octave 4 semitone 826) for channel FM 6
; Pattern $07, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $3d	; Set frequency '9021' (octave 4 semitone 829) for channel FM 6
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 6
; Pattern $07, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $43	; Set frequency '9027' (octave 4 semitone 835) for channel FM 6
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $46	; Set frequency '9030' (octave 4 semitone 838) for channel FM 6
; Pattern $07, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $49	; Set frequency '9033' (octave 4 semitone 841) for channel FM 6
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $4c	; Set frequency '9036' (octave 4 semitone 844) for channel FM 6
; Pattern $07, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $4f	; Set frequency '9039' (octave 4 semitone 847) for channel FM 6
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $52	; Set frequency '9042' (octave 4 semitone 850) for channel FM 6
; Pattern $07, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $55	; Set frequency '9045' (octave 4 semitone 853) for channel FM 6
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 6
; Pattern $07, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 6
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $5e	; Set frequency '9054' (octave 4 semitone 862) for channel FM 6
; Pattern $07, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $61	; Set frequency '9057' (octave 4 semitone 865) for channel FM 6
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $64	; Set frequency '9060' (octave 4 semitone 868) for channel FM 6
; Pattern $07, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $67	; Set frequency '9063' (octave 4 semitone 871) for channel FM 6
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $6a	; Set frequency '9066' (octave 4 semitone 874) for channel FM 6
; Pattern $07, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $6d	; Set frequency '9069' (octave 4 semitone 877) for channel FM 6
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $70	; Set frequency '9072' (octave 4 semitone 880) for channel FM 6
; Pattern $07, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $73	; Set frequency '9075' (octave 4 semitone 883) for channel FM 6
; Pattern $07, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $76	; Set frequency '9078' (octave 4 semitone 886) for channel FM 6
; Pattern $07, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $79	; Set frequency '9081' (octave 4 semitone 889) for channel FM 6
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $7c	; Set frequency '9084' (octave 4 semitone 892) for channel FM 6
; Pattern $07, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $7f	; Set frequency '9087' (octave 4 semitone 895) for channel FM 6
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 6
; Pattern $07, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $85	; Set frequency '9093' (octave 4 semitone 901) for channel FM 6
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 6
; Pattern $07, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8e	; Set frequency '9102' (octave 4 semitone 910) for channel FM 6
; Pattern $07, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $91	; Set frequency '9105' (octave 4 semitone 913) for channel FM 6
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 6
; Pattern $07, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 6
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $9a	; Set frequency '9114' (octave 4 semitone 922) for channel FM 6
; Pattern $07, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $9d	; Set frequency '9117' (octave 4 semitone 925) for channel FM 6
; Pattern $07, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a0	; Set frequency '9120' (octave 4 semitone 928) for channel FM 6
; Pattern $07, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a3	; Set frequency '9123' (octave 4 semitone 931) for channel FM 6
; Pattern $07, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a6	; Set frequency '9126' (octave 4 semitone 934) for channel FM 6
; Pattern $07, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a9	; Set frequency '9129' (octave 4 semitone 937) for channel FM 6
; Pattern $07, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ac	; Set frequency '9132' (octave 4 semitone 940) for channel FM 6
; Pattern $08, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $af	; Set frequency '9135' (octave 4 semitone 943) for channel FM 6
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b2	; Set frequency '9138' (octave 4 semitone 946) for channel FM 6
; Pattern $08, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b5	; Set frequency '9141' (octave 4 semitone 949) for channel FM 6
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b8	; Set frequency '9144' (octave 4 semitone 952) for channel FM 6
; Pattern $08, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $bb	; Set frequency '9147' (octave 4 semitone 955) for channel FM 6
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 6
; Pattern $08, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c1	; Set frequency '9153' (octave 4 semitone 961) for channel FM 6
; Pattern $08, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c4	; Set frequency '9156' (octave 4 semitone 964) for channel FM 6
; Pattern $08, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 6
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 6
; Pattern $08, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 6
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 6
; Pattern $08, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 6
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d6	; Set frequency '9174' (octave 4 semitone 982) for channel FM 6
; Pattern $08, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 6
; Pattern $08, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $dc	; Set frequency '9180' (octave 4 semitone 988) for channel FM 6
; Pattern $08, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $df	; Set frequency '9183' (octave 4 semitone 991) for channel FM 6
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 6
; Pattern $08, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e5	; Set frequency '9189' (octave 4 semitone 997) for channel FM 6
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 6
; Pattern $08, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $eb	; Set frequency '9195' (octave 4 semitone 1003) for channel FM 6
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 6
; Pattern $08, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f1	; Set frequency '9201' (octave 4 semitone 1009) for channel FM 6
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f4	; Set frequency '9204' (octave 4 semitone 1012) for channel FM 6
; Pattern $08, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f7	; Set frequency '9207' (octave 4 semitone 1015) for channel FM 6
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fa	; Set frequency '9210' (octave 4 semitone 1018) for channel FM 6
; Pattern $08, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fd	; Set frequency '9213' (octave 4 semitone 1021) for channel FM 6
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $00	; Set frequency '9216' (octave 4 semitone 1024) for channel FM 6
; Pattern $08, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $03	; Set frequency '9219' (octave 4 semitone 1027) for channel FM 6
; Pattern $08, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 6
; Pattern $08, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $09	; Set frequency '9225' (octave 4 semitone 1033) for channel FM 6
; Pattern $08, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0c	; Set frequency '9228' (octave 4 semitone 1036) for channel FM 6
; Pattern $08, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0f	; Set frequency '9231' (octave 4 semitone 1039) for channel FM 6
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $12	; Set frequency '9234' (octave 4 semitone 1042) for channel FM 6
; Pattern $08, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $15	; Set frequency '9237' (octave 4 semitone 1045) for channel FM 6
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $18	; Set frequency '9240' (octave 4 semitone 1048) for channel FM 6
; Pattern $08, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1b	; Set frequency '9243' (octave 4 semitone 1051) for channel FM 6
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 6
; Pattern $08, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $21	; Set frequency '9249' (octave 4 semitone 1057) for channel FM 6
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $24	; Set frequency '9252' (octave 4 semitone 1060) for channel FM 6
; Pattern $08, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $27	; Set frequency '9255' (octave 4 semitone 1063) for channel FM 6
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2a	; Set frequency '9258' (octave 4 semitone 1066) for channel FM 6
; Pattern $08, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2d	; Set frequency '9261' (octave 4 semitone 1069) for channel FM 6
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $30	; Set frequency '9264' (octave 4 semitone 1072) for channel FM 6
; Pattern $08, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $33	; Set frequency '9267' (octave 4 semitone 1075) for channel FM 6
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 6
; Pattern $08, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $39	; Set frequency '9273' (octave 4 semitone 1081) for channel FM 6
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3c	; Set frequency '9276' (octave 4 semitone 1084) for channel FM 6
; Pattern $08, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3f	; Set frequency '9279' (octave 4 semitone 1087) for channel FM 6
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $42	; Set frequency '9282' (octave 4 semitone 1090) for channel FM 6
; Pattern $08, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $45	; Set frequency '9285' (octave 4 semitone 1093) for channel FM 6
; Pattern $08, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 6
; Pattern $08, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4b	; Set frequency '9291' (octave 4 semitone 1099) for channel FM 6
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4e	; Set frequency '9294' (octave 4 semitone 1102) for channel FM 6
; Pattern $08, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $51	; Set frequency '9297' (octave 4 semitone 1105) for channel FM 6
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $54	; Set frequency '9300' (octave 4 semitone 1108) for channel FM 6
; Pattern $08, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $57	; Set frequency '9303' (octave 4 semitone 1111) for channel FM 6
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5a	; Set frequency '9306' (octave 4 semitone 1114) for channel FM 6
; Pattern $08, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5d	; Set frequency '9309' (octave 4 semitone 1117) for channel FM 6
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $60	; Set frequency '9312' (octave 4 semitone 1120) for channel FM 6
; Pattern $08, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $63	; Set frequency '9315' (octave 4 semitone 1123) for channel FM 6
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $66	; Set frequency '9318' (octave 4 semitone 1126) for channel FM 6
; Pattern $08, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $69	; Set frequency '9321' (octave 4 semitone 1129) for channel FM 6
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6c	; Set frequency '9324' (octave 4 semitone 1132) for channel FM 6
; Pattern $08, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6f	; Set frequency '9327' (octave 4 semitone 1135) for channel FM 6
; Pattern $08, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $72	; Set frequency '9330' (octave 4 semitone 1138) for channel FM 6
; Pattern $08, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $75	; Set frequency '9333' (octave 4 semitone 1141) for channel FM 6
; Pattern $08, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $78	; Set frequency '9336' (octave 4 semitone 1144) for channel FM 6
; Pattern $08, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 6
; Pattern $08, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 6
	dc.b $ff	; The End

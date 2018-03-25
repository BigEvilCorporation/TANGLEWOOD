	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $9f	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $f6, $e1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $26, $15	; Set volume for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $4b, $a0	; Set instrument for channel PSG 4
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
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $87	; Set frequency '6791' (octave 3 semitone 647) for channel FM 6
; Pattern $03, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8a	; Set frequency '6794' (octave 3 semitone 650) for channel FM 6
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
; Pattern $03, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $90	; Set frequency '6800' (octave 3 semitone 656) for channel FM 6
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $93	; Set frequency '6803' (octave 3 semitone 659) for channel FM 6
; Pattern $03, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 6
; Pattern $03, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 6
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 6
; Pattern $03, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 6
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 6
; Pattern $03, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 6
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ab	; Set frequency '6827' (octave 3 semitone 683) for channel FM 6
; Pattern $03, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ae	; Set frequency '6830' (octave 3 semitone 686) for channel FM 6
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b1	; Set frequency '6833' (octave 3 semitone 689) for channel FM 6
; Pattern $03, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b4	; Set frequency '6836' (octave 3 semitone 692) for channel FM 6
; Pattern $03, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b7	; Set frequency '6839' (octave 3 semitone 695) for channel FM 6
; Pattern $03, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ba	; Set frequency '6842' (octave 3 semitone 698) for channel FM 6
; Pattern $03, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $bd	; Set frequency '6845' (octave 3 semitone 701) for channel FM 6
; Pattern $03, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 6
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 6
; Pattern $03, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 6
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 6
; Pattern $03, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 6
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 6
; Pattern $03, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d2	; Set frequency '6866' (octave 3 semitone 722) for channel FM 6
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 6
; Pattern $03, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d8	; Set frequency '6872' (octave 3 semitone 728) for channel FM 6
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $db	; Set frequency '6875' (octave 3 semitone 731) for channel FM 6
; Pattern $03, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 6
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e1	; Set frequency '6881' (octave 3 semitone 737) for channel FM 6
; Pattern $03, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 6
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e7	; Set frequency '6887' (octave 3 semitone 743) for channel FM 6
; Pattern $03, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 6
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 6
; Pattern $03, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 6
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 6
; Pattern $03, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 6
; Pattern $03, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 6
; Pattern $03, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 6
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 6
; Pattern $03, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 6
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 6
; Pattern $03, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 6
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0b	; Set frequency '6923' (octave 3 semitone 779) for channel FM 6
; Pattern $03, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 6
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 6
; Pattern $03, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 6
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $17	; Set frequency '6935' (octave 3 semitone 791) for channel FM 6
; Pattern $03, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 6
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1d	; Set frequency '6941' (octave 3 semitone 797) for channel FM 6
; Pattern $03, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 6
; Pattern $03, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $23	; Set frequency '6947' (octave 3 semitone 803) for channel FM 6
; Pattern $03, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 6
; Pattern $03, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $29	; Set frequency '6953' (octave 3 semitone 809) for channel FM 6
; Pattern $03, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2c	; Set frequency '6956' (octave 3 semitone 812) for channel FM 6
; Pattern $03, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2f	; Set frequency '6959' (octave 3 semitone 815) for channel FM 6
; Pattern $04, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $32	; Set frequency '6962' (octave 3 semitone 818) for channel FM 6
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $35	; Set frequency '6965' (octave 3 semitone 821) for channel FM 6
; Pattern $04, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $38	; Set frequency '6968' (octave 3 semitone 824) for channel FM 6
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 6
; Pattern $04, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $41	; Set frequency '6977' (octave 3 semitone 833) for channel FM 6
; Pattern $04, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 6
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 6
; Pattern $04, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 6
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 6
; Pattern $04, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 6
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 6
; Pattern $04, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 6
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 6
; Pattern $04, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $5c	; Set frequency '7004' (octave 3 semitone 860) for channel FM 6
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $5f	; Set frequency '7007' (octave 3 semitone 863) for channel FM 6
; Pattern $04, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $62	; Set frequency '7010' (octave 3 semitone 866) for channel FM 6
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $65	; Set frequency '7013' (octave 3 semitone 869) for channel FM 6
; Pattern $04, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $68	; Set frequency '7016' (octave 3 semitone 872) for channel FM 6
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $6b	; Set frequency '7019' (octave 3 semitone 875) for channel FM 6
; Pattern $04, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $6e	; Set frequency '7022' (octave 3 semitone 878) for channel FM 6
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $71	; Set frequency '7025' (octave 3 semitone 881) for channel FM 6
; Pattern $04, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $74	; Set frequency '7028' (octave 3 semitone 884) for channel FM 6
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $77	; Set frequency '7031' (octave 3 semitone 887) for channel FM 6
; Pattern $04, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 6
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 6
; Pattern $04, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 6
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 6
; Pattern $04, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 6
; Pattern $04, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 6
; Pattern $04, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 6
; Pattern $04, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 6
; Pattern $04, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 6
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 6
; Pattern $04, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 6
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 6
; Pattern $04, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 6
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 6
; Pattern $04, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 6
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 6
; Pattern $04, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $aa	; Set frequency '7082' (octave 3 semitone 938) for channel FM 6
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 6
; Pattern $04, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 6
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 6
; Pattern $04, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 6
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 6
; Pattern $04, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 6
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 6
; Pattern $04, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 6
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 6
; Pattern $04, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 6
; Pattern $04, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 6
; Pattern $04, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 6
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d1	; Set frequency '7121' (octave 3 semitone 977) for channel FM 6
; Pattern $04, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 6
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 6
; Pattern $04, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 6
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 6
; Pattern $04, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e0	; Set frequency '7136' (octave 3 semitone 992) for channel FM 6
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e3	; Set frequency '7139' (octave 3 semitone 995) for channel FM 6
; Pattern $04, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 6
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 6
; Pattern $04, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 6
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 6
; Pattern $04, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 6
; Pattern $04, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 6
; Pattern $04, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 6
; Pattern $04, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 6
; Pattern $04, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 6
; Pattern $04, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
; Pattern $05, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 6
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $07	; Set frequency '7175' (octave 3 semitone 1031) for channel FM 6
; Pattern $05, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0d	; Set frequency '7181' (octave 3 semitone 1037) for channel FM 6
; Pattern $05, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 6
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $05, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 6
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $19	; Set frequency '7193' (octave 3 semitone 1049) for channel FM 6
; Pattern $05, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $1c	; Set frequency '7196' (octave 3 semitone 1052) for channel FM 6
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 6
; Pattern $05, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $22	; Set frequency '7202' (octave 3 semitone 1058) for channel FM 6
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $25	; Set frequency '7205' (octave 3 semitone 1061) for channel FM 6
; Pattern $05, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 6
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $2b	; Set frequency '7211' (octave 3 semitone 1067) for channel FM 6
; Pattern $05, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 6
; Pattern $05, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $31	; Set frequency '7217' (octave 3 semitone 1073) for channel FM 6
; Pattern $05, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $34	; Set frequency '7220' (octave 3 semitone 1076) for channel FM 6
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $37	; Set frequency '7223' (octave 3 semitone 1079) for channel FM 6
; Pattern $05, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3a	; Set frequency '7226' (octave 3 semitone 1082) for channel FM 6
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3d	; Set frequency '7229' (octave 3 semitone 1085) for channel FM 6
; Pattern $05, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $40	; Set frequency '7232' (octave 3 semitone 1088) for channel FM 6
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $43	; Set frequency '7235' (octave 3 semitone 1091) for channel FM 6
; Pattern $05, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $46	; Set frequency '7238' (octave 3 semitone 1094) for channel FM 6
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $49	; Set frequency '7241' (octave 3 semitone 1097) for channel FM 6
; Pattern $05, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 6
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $4f	; Set frequency '7247' (octave 3 semitone 1103) for channel FM 6
; Pattern $05, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $52	; Set frequency '7250' (octave 3 semitone 1106) for channel FM 6
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $55	; Set frequency '7253' (octave 3 semitone 1109) for channel FM 6
; Pattern $05, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 6
; Pattern $05, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5b	; Set frequency '7259' (octave 3 semitone 1115) for channel FM 6
; Pattern $05, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 6
; Pattern $05, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $61	; Set frequency '7265' (octave 3 semitone 1121) for channel FM 6
; Pattern $05, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 6
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $67	; Set frequency '7271' (octave 3 semitone 1127) for channel FM 6
; Pattern $05, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 6
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 6
; Pattern $05, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 6
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 6
; Pattern $05, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 6
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 6
; Pattern $05, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 6
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 6
; Pattern $05, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 6
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $85	; Set frequency '7301' (octave 3 semitone 1157) for channel FM 6
; Pattern $05, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 6
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8b	; Set frequency '7307' (octave 3 semitone 1163) for channel FM 6
; Pattern $05, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 6
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 6
; Pattern $05, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 6
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $97	; Set frequency '7319' (octave 3 semitone 1175) for channel FM 6
; Pattern $05, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 6
; Pattern $05, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9d	; Set frequency '7325' (octave 3 semitone 1181) for channel FM 6
; Pattern $05, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 6
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a3	; Set frequency '7331' (octave 3 semitone 1187) for channel FM 6
; Pattern $05, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 6
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a9	; Set frequency '7337' (octave 3 semitone 1193) for channel FM 6
; Pattern $05, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 6
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 6
; Pattern $05, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 6
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b5	; Set frequency '7349' (octave 3 semitone 1205) for channel FM 6
; Pattern $05, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 6
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bb	; Set frequency '7355' (octave 3 semitone 1211) for channel FM 6
; Pattern $05, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 6
; Pattern $05, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 6
; Pattern $05, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8a	; Set frequency '8842' (octave 4 semitone 650) for channel FM 6
; Pattern $05, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
; Pattern $05, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 6
; Pattern $05, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $93	; Set frequency '8851' (octave 4 semitone 659) for channel FM 6
; Pattern $05, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 6
; Pattern $06, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 6
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 6
; Pattern $06, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 6
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 6
; Pattern $06, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 6
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 6
; Pattern $06, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ab	; Set frequency '8875' (octave 4 semitone 683) for channel FM 6
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ae	; Set frequency '8878' (octave 4 semitone 686) for channel FM 6
; Pattern $06, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b1	; Set frequency '8881' (octave 4 semitone 689) for channel FM 6
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 6
; Pattern $06, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b7	; Set frequency '8887' (octave 4 semitone 695) for channel FM 6
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ba	; Set frequency '8890' (octave 4 semitone 698) for channel FM 6
; Pattern $06, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $bd	; Set frequency '8893' (octave 4 semitone 701) for channel FM 6
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 6
; Pattern $06, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c3	; Set frequency '8899' (octave 4 semitone 707) for channel FM 6
; Pattern $06, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 6
; Pattern $06, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c9	; Set frequency '8905' (octave 4 semitone 713) for channel FM 6
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 6
; Pattern $06, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $cf	; Set frequency '8911' (octave 4 semitone 719) for channel FM 6
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $d2	; Set frequency '8914' (octave 4 semitone 722) for channel FM 6
; Pattern $06, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $d5	; Set frequency '8917' (octave 4 semitone 725) for channel FM 6
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 6
; Pattern $06, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $db	; Set frequency '8923' (octave 4 semitone 731) for channel FM 6
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 6
; Pattern $06, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e1	; Set frequency '8929' (octave 4 semitone 737) for channel FM 6
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 6
; Pattern $06, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $e7	; Set frequency '8935' (octave 4 semitone 743) for channel FM 6
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 6
; Pattern $06, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ed	; Set frequency '8941' (octave 4 semitone 749) for channel FM 6
; Pattern $06, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 6
; Pattern $06, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f3	; Set frequency '8947' (octave 4 semitone 755) for channel FM 6
; Pattern $06, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 6
; Pattern $06, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f9	; Set frequency '8953' (octave 4 semitone 761) for channel FM 6
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 6
; Pattern $06, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ff	; Set frequency '8959' (octave 4 semitone 767) for channel FM 6
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $02	; Set frequency '8962' (octave 4 semitone 770) for channel FM 6
; Pattern $06, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $05	; Set frequency '8965' (octave 4 semitone 773) for channel FM 6
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 6
; Pattern $06, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0b	; Set frequency '8971' (octave 4 semitone 779) for channel FM 6
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0e	; Set frequency '8974' (octave 4 semitone 782) for channel FM 6
; Pattern $06, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $11	; Set frequency '8977' (octave 4 semitone 785) for channel FM 6
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $14	; Set frequency '8980' (octave 4 semitone 788) for channel FM 6
; Pattern $06, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $17	; Set frequency '8983' (octave 4 semitone 791) for channel FM 6
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $1a	; Set frequency '8986' (octave 4 semitone 794) for channel FM 6
; Pattern $06, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $1d	; Set frequency '8989' (octave 4 semitone 797) for channel FM 6
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $20	; Set frequency '8992' (octave 4 semitone 800) for channel FM 6
; Pattern $06, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $23	; Set frequency '8995' (octave 4 semitone 803) for channel FM 6
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $26	; Set frequency '8998' (octave 4 semitone 806) for channel FM 6
; Pattern $06, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $29	; Set frequency '9001' (octave 4 semitone 809) for channel FM 6
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $2c	; Set frequency '9004' (octave 4 semitone 812) for channel FM 6
; Pattern $06, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $2f	; Set frequency '9007' (octave 4 semitone 815) for channel FM 6
; Pattern $06, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $32	; Set frequency '9010' (octave 4 semitone 818) for channel FM 6
; Pattern $06, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $35	; Set frequency '9013' (octave 4 semitone 821) for channel FM 6
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $38	; Set frequency '9016' (octave 4 semitone 824) for channel FM 6
; Pattern $06, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $3b	; Set frequency '9019' (octave 4 semitone 827) for channel FM 6
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 6
; Pattern $06, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $41	; Set frequency '9025' (octave 4 semitone 833) for channel FM 6
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 6
; Pattern $06, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $47	; Set frequency '9031' (octave 4 semitone 839) for channel FM 6
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $4a	; Set frequency '9034' (octave 4 semitone 842) for channel FM 6
; Pattern $06, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $4d	; Set frequency '9037' (octave 4 semitone 845) for channel FM 6
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $50	; Set frequency '9040' (octave 4 semitone 848) for channel FM 6
; Pattern $06, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $53	; Set frequency '9043' (octave 4 semitone 851) for channel FM 6
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $56	; Set frequency '9046' (octave 4 semitone 854) for channel FM 6
; Pattern $06, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 6
; Pattern $06, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 6
; Pattern $06, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $5f	; Set frequency '9055' (octave 4 semitone 863) for channel FM 6
; Pattern $06, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $62	; Set frequency '9058' (octave 4 semitone 866) for channel FM 6
; Pattern $06, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $65	; Set frequency '9061' (octave 4 semitone 869) for channel FM 6
; Pattern $06, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $68	; Set frequency '9064' (octave 4 semitone 872) for channel FM 6
; Pattern $07, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $6b	; Set frequency '9067' (octave 4 semitone 875) for channel FM 6
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $6e	; Set frequency '9070' (octave 4 semitone 878) for channel FM 6
; Pattern $07, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $71	; Set frequency '9073' (octave 4 semitone 881) for channel FM 6
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $74	; Set frequency '9076' (octave 4 semitone 884) for channel FM 6
; Pattern $07, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $77	; Set frequency '9079' (octave 4 semitone 887) for channel FM 6
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $7a	; Set frequency '9082' (octave 4 semitone 890) for channel FM 6
; Pattern $07, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $7d	; Set frequency '9085' (octave 4 semitone 893) for channel FM 6
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 6
; Pattern $07, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $83	; Set frequency '9091' (octave 4 semitone 899) for channel FM 6
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 6
; Pattern $07, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $89	; Set frequency '9097' (octave 4 semitone 905) for channel FM 6
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 6
; Pattern $07, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 6
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $92	; Set frequency '9106' (octave 4 semitone 914) for channel FM 6
; Pattern $07, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $95	; Set frequency '9109' (octave 4 semitone 917) for channel FM 6
; Pattern $07, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $98	; Set frequency '9112' (octave 4 semitone 920) for channel FM 6
; Pattern $07, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $9b	; Set frequency '9115' (octave 4 semitone 923) for channel FM 6
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 6
; Pattern $07, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a1	; Set frequency '9121' (octave 4 semitone 929) for channel FM 6
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a4	; Set frequency '9124' (octave 4 semitone 932) for channel FM 6
; Pattern $07, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $a7	; Set frequency '9127' (octave 4 semitone 935) for channel FM 6
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $aa	; Set frequency '9130' (octave 4 semitone 938) for channel FM 6
; Pattern $07, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ad	; Set frequency '9133' (octave 4 semitone 941) for channel FM 6
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b0	; Set frequency '9136' (octave 4 semitone 944) for channel FM 6
; Pattern $07, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b3	; Set frequency '9139' (octave 4 semitone 947) for channel FM 6
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b6	; Set frequency '9142' (octave 4 semitone 950) for channel FM 6
; Pattern $07, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $b9	; Set frequency '9145' (octave 4 semitone 953) for channel FM 6
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 6
; Pattern $07, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 6
; Pattern $07, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c2	; Set frequency '9154' (octave 4 semitone 962) for channel FM 6
; Pattern $07, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 6
; Pattern $07, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 6
; Pattern $07, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 6
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 6
; Pattern $07, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 6
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 6
; Pattern $07, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $d7	; Set frequency '9175' (octave 4 semitone 983) for channel FM 6
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 6
; Pattern $07, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $dd	; Set frequency '9181' (octave 4 semitone 989) for channel FM 6
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 6
; Pattern $07, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e3	; Set frequency '9187' (octave 4 semitone 995) for channel FM 6
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e6	; Set frequency '9190' (octave 4 semitone 998) for channel FM 6
; Pattern $07, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $e9	; Set frequency '9193' (octave 4 semitone 1001) for channel FM 6
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ec	; Set frequency '9196' (octave 4 semitone 1004) for channel FM 6
; Pattern $07, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $ef	; Set frequency '9199' (octave 4 semitone 1007) for channel FM 6
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f2	; Set frequency '9202' (octave 4 semitone 1010) for channel FM 6
; Pattern $07, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f5	; Set frequency '9205' (octave 4 semitone 1013) for channel FM 6
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 6
; Pattern $07, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fb	; Set frequency '9211' (octave 4 semitone 1019) for channel FM 6
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 6
; Pattern $07, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $01	; Set frequency '9217' (octave 4 semitone 1025) for channel FM 6
; Pattern $07, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $04	; Set frequency '9220' (octave 4 semitone 1028) for channel FM 6
; Pattern $07, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $07	; Set frequency '9223' (octave 4 semitone 1031) for channel FM 6
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
; Pattern $07, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0d	; Set frequency '9229' (octave 4 semitone 1037) for channel FM 6
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $10	; Set frequency '9232' (octave 4 semitone 1040) for channel FM 6
; Pattern $07, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 6
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 6
; Pattern $07, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $19	; Set frequency '9241' (octave 4 semitone 1049) for channel FM 6
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1c	; Set frequency '9244' (octave 4 semitone 1052) for channel FM 6
; Pattern $07, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $1f	; Set frequency '9247' (octave 4 semitone 1055) for channel FM 6
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $22	; Set frequency '9250' (octave 4 semitone 1058) for channel FM 6
; Pattern $07, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $25	; Set frequency '9253' (octave 4 semitone 1061) for channel FM 6
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $28	; Set frequency '9256' (octave 4 semitone 1064) for channel FM 6
; Pattern $07, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2b	; Set frequency '9259' (octave 4 semitone 1067) for channel FM 6
; Pattern $07, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $2e	; Set frequency '9262' (octave 4 semitone 1070) for channel FM 6
; Pattern $07, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $31	; Set frequency '9265' (octave 4 semitone 1073) for channel FM 6
; Pattern $07, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $34	; Set frequency '9268' (octave 4 semitone 1076) for channel FM 6
; Pattern $07, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $37	; Set frequency '9271' (octave 4 semitone 1079) for channel FM 6
; Pattern $07, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3a	; Set frequency '9274' (octave 4 semitone 1082) for channel FM 6
; Pattern $08, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3d	; Set frequency '9277' (octave 4 semitone 1085) for channel FM 6
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $40	; Set frequency '9280' (octave 4 semitone 1088) for channel FM 6
; Pattern $08, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $43	; Set frequency '9283' (octave 4 semitone 1091) for channel FM 6
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $46	; Set frequency '9286' (octave 4 semitone 1094) for channel FM 6
; Pattern $08, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $49	; Set frequency '9289' (octave 4 semitone 1097) for channel FM 6
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4c	; Set frequency '9292' (octave 4 semitone 1100) for channel FM 6
; Pattern $08, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $4f	; Set frequency '9295' (octave 4 semitone 1103) for channel FM 6
; Pattern $08, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $52	; Set frequency '9298' (octave 4 semitone 1106) for channel FM 6
; Pattern $08, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $55	; Set frequency '9301' (octave 4 semitone 1109) for channel FM 6
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $58	; Set frequency '9304' (octave 4 semitone 1112) for channel FM 6
; Pattern $08, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5b	; Set frequency '9307' (octave 4 semitone 1115) for channel FM 6
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $5e	; Set frequency '9310' (octave 4 semitone 1118) for channel FM 6
; Pattern $08, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 6
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $64	; Set frequency '9316' (octave 4 semitone 1124) for channel FM 6
; Pattern $08, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $67	; Set frequency '9319' (octave 4 semitone 1127) for channel FM 6
; Pattern $08, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6a	; Set frequency '9322' (octave 4 semitone 1130) for channel FM 6
; Pattern $08, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6d	; Set frequency '9325' (octave 4 semitone 1133) for channel FM 6
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $70	; Set frequency '9328' (octave 4 semitone 1136) for channel FM 6
; Pattern $08, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $73	; Set frequency '9331' (octave 4 semitone 1139) for channel FM 6
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $76	; Set frequency '9334' (octave 4 semitone 1142) for channel FM 6
; Pattern $08, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 6
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 6
; Pattern $08, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7f	; Set frequency '9343' (octave 4 semitone 1151) for channel FM 6
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $82	; Set frequency '9346' (octave 4 semitone 1154) for channel FM 6
; Pattern $08, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 6
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $88	; Set frequency '9352' (octave 4 semitone 1160) for channel FM 6
; Pattern $08, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $8b	; Set frequency '9355' (octave 4 semitone 1163) for channel FM 6
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $8e	; Set frequency '9358' (octave 4 semitone 1166) for channel FM 6
; Pattern $08, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $91	; Set frequency '9361' (octave 4 semitone 1169) for channel FM 6
; Pattern $08, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $94	; Set frequency '9364' (octave 4 semitone 1172) for channel FM 6
; Pattern $08, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $97	; Set frequency '9367' (octave 4 semitone 1175) for channel FM 6
; Pattern $08, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $9a	; Set frequency '9370' (octave 4 semitone 1178) for channel FM 6
; Pattern $08, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $9d	; Set frequency '9373' (octave 4 semitone 1181) for channel FM 6
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $a0	; Set frequency '9376' (octave 4 semitone 1184) for channel FM 6
; Pattern $08, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $a3	; Set frequency '9379' (octave 4 semitone 1187) for channel FM 6
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $a6	; Set frequency '9382' (octave 4 semitone 1190) for channel FM 6
; Pattern $08, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $a9	; Set frequency '9385' (octave 4 semitone 1193) for channel FM 6
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $ac	; Set frequency '9388' (octave 4 semitone 1196) for channel FM 6
; Pattern $08, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $af	; Set frequency '9391' (octave 4 semitone 1199) for channel FM 6
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $b2	; Set frequency '9394' (octave 4 semitone 1202) for channel FM 6
; Pattern $08, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $b5	; Set frequency '9397' (octave 4 semitone 1205) for channel FM 6
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $b8	; Set frequency '9400' (octave 4 semitone 1208) for channel FM 6
; Pattern $08, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $bb	; Set frequency '9403' (octave 4 semitone 1211) for channel FM 6
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 6
; Pattern $08, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 6
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $87	; Set frequency '10887' (octave 5 semitone 647) for channel FM 6
; Pattern $08, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $8a	; Set frequency '10890' (octave 5 semitone 650) for channel FM 6
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 6
; Pattern $08, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 6
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $93	; Set frequency '10899' (octave 5 semitone 659) for channel FM 6
; Pattern $08, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $96	; Set frequency '10902' (octave 5 semitone 662) for channel FM 6
; Pattern $08, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $99	; Set frequency '10905' (octave 5 semitone 665) for channel FM 6
; Pattern $08, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $9c	; Set frequency '10908' (octave 5 semitone 668) for channel FM 6
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $9f	; Set frequency '10911' (octave 5 semitone 671) for channel FM 6
; Pattern $08, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $a2	; Set frequency '10914' (octave 5 semitone 674) for channel FM 6
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $a5	; Set frequency '10917' (octave 5 semitone 677) for channel FM 6
; Pattern $08, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $a8	; Set frequency '10920' (octave 5 semitone 680) for channel FM 6
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $ab	; Set frequency '10923' (octave 5 semitone 683) for channel FM 6
; Pattern $08, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $ae	; Set frequency '10926' (octave 5 semitone 686) for channel FM 6
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $b1	; Set frequency '10929' (octave 5 semitone 689) for channel FM 6
; Pattern $08, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $b4	; Set frequency '10932' (octave 5 semitone 692) for channel FM 6
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $b7	; Set frequency '10935' (octave 5 semitone 695) for channel FM 6
; Pattern $08, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $ba	; Set frequency '10938' (octave 5 semitone 698) for channel FM 6
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $bd	; Set frequency '10941' (octave 5 semitone 701) for channel FM 6
; Pattern $08, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 6
; Pattern $08, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c3	; Set frequency '10947' (octave 5 semitone 707) for channel FM 6
; Pattern $08, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c6	; Set frequency '10950' (octave 5 semitone 710) for channel FM 6
; Pattern $08, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c9	; Set frequency '10953' (octave 5 semitone 713) for channel FM 6
; Pattern $08, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $cc	; Set frequency '10956' (octave 5 semitone 716) for channel FM 6
; Pattern $08, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $cf	; Set frequency '10959' (octave 5 semitone 719) for channel FM 6
	dc.b $ff	; The End

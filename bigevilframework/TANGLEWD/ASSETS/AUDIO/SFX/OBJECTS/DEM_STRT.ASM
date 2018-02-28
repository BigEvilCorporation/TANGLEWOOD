	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $cb	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $26, $15	; Set volume for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $4b, $cc	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' (octave 0 semitone 13) for channel PSG 3
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
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $84	; Set frequency '2692' (octave 1 semitone 644) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $85	; Set frequency '2693' (octave 1 semitone 645) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $86	; Set frequency '2694' (octave 1 semitone 646) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $87	; Set frequency '2695' (octave 1 semitone 647) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $88	; Set frequency '2696' (octave 1 semitone 648) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $89	; Set frequency '2697' (octave 1 semitone 649) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8a	; Set frequency '2698' (octave 1 semitone 650) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8b	; Set frequency '2699' (octave 1 semitone 651) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8c	; Set frequency '2700' (octave 1 semitone 652) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8d	; Set frequency '2701' (octave 1 semitone 653) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8e	; Set frequency '2702' (octave 1 semitone 654) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8f	; Set frequency '2703' (octave 1 semitone 655) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $90	; Set frequency '2704' (octave 1 semitone 656) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $91	; Set frequency '2705' (octave 1 semitone 657) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $92	; Set frequency '2706' (octave 1 semitone 658) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $93	; Set frequency '2707' (octave 1 semitone 659) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $94	; Set frequency '2708' (octave 1 semitone 660) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $95	; Set frequency '2709' (octave 1 semitone 661) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $96	; Set frequency '2710' (octave 1 semitone 662) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $97	; Set frequency '2711' (octave 1 semitone 663) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $98	; Set frequency '2712' (octave 1 semitone 664) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $99	; Set frequency '2713' (octave 1 semitone 665) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9a	; Set frequency '2714' (octave 1 semitone 666) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9d	; Set frequency '2717' (octave 1 semitone 669) for channel FM 6
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a0	; Set frequency '2720' (octave 1 semitone 672) for channel FM 6
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a3	; Set frequency '2723' (octave 1 semitone 675) for channel FM 6
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a6	; Set frequency '2726' (octave 1 semitone 678) for channel FM 6
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a9	; Set frequency '2729' (octave 1 semitone 681) for channel FM 6
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ac	; Set frequency '2732' (octave 1 semitone 684) for channel FM 6
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $af	; Set frequency '2735' (octave 1 semitone 687) for channel FM 6
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b2	; Set frequency '2738' (octave 1 semitone 690) for channel FM 6
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b5	; Set frequency '2741' (octave 1 semitone 693) for channel FM 6
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b8	; Set frequency '2744' (octave 1 semitone 696) for channel FM 6
; Pattern $00, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $bb	; Set frequency '2747' (octave 1 semitone 699) for channel FM 6
; Pattern $00, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c1	; Set frequency '2753' (octave 1 semitone 705) for channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c4	; Set frequency '2756' (octave 1 semitone 708) for channel FM 6
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c7	; Set frequency '2759' (octave 1 semitone 711) for channel FM 6
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ca	; Set frequency '2762' (octave 1 semitone 714) for channel FM 6
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $cd	; Set frequency '2765' (octave 1 semitone 717) for channel FM 6
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $d0	; Set frequency '2768' (octave 1 semitone 720) for channel FM 6
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $d3	; Set frequency '2771' (octave 1 semitone 723) for channel FM 6
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $d6	; Set frequency '2774' (octave 1 semitone 726) for channel FM 6
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $d9	; Set frequency '2777' (octave 1 semitone 729) for channel FM 6
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $dc	; Set frequency '2780' (octave 1 semitone 732) for channel FM 6
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $df	; Set frequency '2783' (octave 1 semitone 735) for channel FM 6
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $e2	; Set frequency '2786' (octave 1 semitone 738) for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $e5	; Set frequency '2789' (octave 1 semitone 741) for channel FM 6
; Pattern $00, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $e8	; Set frequency '2792' (octave 1 semitone 744) for channel FM 6
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $eb	; Set frequency '2795' (octave 1 semitone 747) for channel FM 6
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ee	; Set frequency '2798' (octave 1 semitone 750) for channel FM 6
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $f1	; Set frequency '2801' (octave 1 semitone 753) for channel FM 6
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $f4	; Set frequency '2804' (octave 1 semitone 756) for channel FM 6
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $f7	; Set frequency '2807' (octave 1 semitone 759) for channel FM 6
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $fa	; Set frequency '2810' (octave 1 semitone 762) for channel FM 6
; Pattern $01, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $fd	; Set frequency '2813' (octave 1 semitone 765) for channel FM 6
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $00	; Set frequency '2816' (octave 1 semitone 768) for channel FM 6
; Pattern $01, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $03	; Set frequency '2819' (octave 1 semitone 771) for channel FM 6
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $06	; Set frequency '2822' (octave 1 semitone 774) for channel FM 6
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $09	; Set frequency '2825' (octave 1 semitone 777) for channel FM 6
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $0c	; Set frequency '2828' (octave 1 semitone 780) for channel FM 6
; Pattern $01, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $0f	; Set frequency '2831' (octave 1 semitone 783) for channel FM 6
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $12	; Set frequency '2834' (octave 1 semitone 786) for channel FM 6
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $15	; Set frequency '2837' (octave 1 semitone 789) for channel FM 6
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $18	; Set frequency '2840' (octave 1 semitone 792) for channel FM 6
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1b	; Set frequency '2843' (octave 1 semitone 795) for channel FM 6
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 6
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $21	; Set frequency '2849' (octave 1 semitone 801) for channel FM 6
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $24	; Set frequency '2852' (octave 1 semitone 804) for channel FM 6
; Pattern $01, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $27	; Set frequency '2855' (octave 1 semitone 807) for channel FM 6
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $2a	; Set frequency '2858' (octave 1 semitone 810) for channel FM 6
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $2d	; Set frequency '2861' (octave 1 semitone 813) for channel FM 6
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $30	; Set frequency '2864' (octave 1 semitone 816) for channel FM 6
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $33	; Set frequency '2867' (octave 1 semitone 819) for channel FM 6
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $36	; Set frequency '2870' (octave 1 semitone 822) for channel FM 6
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $39	; Set frequency '2873' (octave 1 semitone 825) for channel FM 6
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3c	; Set frequency '2876' (octave 1 semitone 828) for channel FM 6
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3f	; Set frequency '2879' (octave 1 semitone 831) for channel FM 6
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $42	; Set frequency '2882' (octave 1 semitone 834) for channel FM 6
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $45	; Set frequency '2885' (octave 1 semitone 837) for channel FM 6
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $48	; Set frequency '2888' (octave 1 semitone 840) for channel FM 6
; Pattern $01, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $4b	; Set frequency '2891' (octave 1 semitone 843) for channel FM 6
; Pattern $01, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $4e	; Set frequency '2894' (octave 1 semitone 846) for channel FM 6
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $51	; Set frequency '2897' (octave 1 semitone 849) for channel FM 6
; Pattern $01, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $54	; Set frequency '2900' (octave 1 semitone 852) for channel FM 6
; Pattern $01, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $57	; Set frequency '2903' (octave 1 semitone 855) for channel FM 6
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $5a	; Set frequency '2906' (octave 1 semitone 858) for channel FM 6
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $5d	; Set frequency '2909' (octave 1 semitone 861) for channel FM 6
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $60	; Set frequency '2912' (octave 1 semitone 864) for channel FM 6
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $63	; Set frequency '2915' (octave 1 semitone 867) for channel FM 6
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $66	; Set frequency '2918' (octave 1 semitone 870) for channel FM 6
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $69	; Set frequency '2921' (octave 1 semitone 873) for channel FM 6
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $6c	; Set frequency '2924' (octave 1 semitone 876) for channel FM 6
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $6f	; Set frequency '2927' (octave 1 semitone 879) for channel FM 6
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $72	; Set frequency '2930' (octave 1 semitone 882) for channel FM 6
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $75	; Set frequency '2933' (octave 1 semitone 885) for channel FM 6
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $78	; Set frequency '2936' (octave 1 semitone 888) for channel FM 6
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $7b	; Set frequency '2939' (octave 1 semitone 891) for channel FM 6
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 6
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $81	; Set frequency '2945' (octave 1 semitone 897) for channel FM 6
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $84	; Set frequency '2948' (octave 1 semitone 900) for channel FM 6
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $87	; Set frequency '2951' (octave 1 semitone 903) for channel FM 6
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $8a	; Set frequency '2954' (octave 1 semitone 906) for channel FM 6
; Pattern $01, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $8d	; Set frequency '2957' (octave 1 semitone 909) for channel FM 6
; Pattern $01, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $90	; Set frequency '2960' (octave 1 semitone 912) for channel FM 6
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $93	; Set frequency '2963' (octave 1 semitone 915) for channel FM 6
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $96	; Set frequency '2966' (octave 1 semitone 918) for channel FM 6
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $99	; Set frequency '2969' (octave 1 semitone 921) for channel FM 6
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9c	; Set frequency '2972' (octave 1 semitone 924) for channel FM 6
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9f	; Set frequency '2975' (octave 1 semitone 927) for channel FM 6
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a2	; Set frequency '2978' (octave 1 semitone 930) for channel FM 6
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a5	; Set frequency '2981' (octave 1 semitone 933) for channel FM 6
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a8	; Set frequency '2984' (octave 1 semitone 936) for channel FM 6
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ab	; Set frequency '2987' (octave 1 semitone 939) for channel FM 6
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ae	; Set frequency '2990' (octave 1 semitone 942) for channel FM 6
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $b1	; Set frequency '2993' (octave 1 semitone 945) for channel FM 6
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $b4	; Set frequency '2996' (octave 1 semitone 948) for channel FM 6
; Pattern $01, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $b7	; Set frequency '2999' (octave 1 semitone 951) for channel FM 6
; Pattern $01, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ba	; Set frequency '3002' (octave 1 semitone 954) for channel FM 6
; Pattern $01, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bd	; Set frequency '3005' (octave 1 semitone 957) for channel FM 6
; Pattern $01, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $c0	; Set frequency '3008' (octave 1 semitone 960) for channel FM 6
; Pattern $01, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $c3	; Set frequency '3011' (octave 1 semitone 963) for channel FM 6
; Pattern $01, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $c6	; Set frequency '3014' (octave 1 semitone 966) for channel FM 6
; Pattern $02, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $c9	; Set frequency '3017' (octave 1 semitone 969) for channel FM 6
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 6
; Pattern $02, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $cf	; Set frequency '3023' (octave 1 semitone 975) for channel FM 6
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $d2	; Set frequency '3026' (octave 1 semitone 978) for channel FM 6
; Pattern $02, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $d5	; Set frequency '3029' (octave 1 semitone 981) for channel FM 6
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $d8	; Set frequency '3032' (octave 1 semitone 984) for channel FM 6
; Pattern $02, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $db	; Set frequency '3035' (octave 1 semitone 987) for channel FM 6
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $de	; Set frequency '3038' (octave 1 semitone 990) for channel FM 6
; Pattern $02, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $e1	; Set frequency '3041' (octave 1 semitone 993) for channel FM 6
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $e4	; Set frequency '3044' (octave 1 semitone 996) for channel FM 6
; Pattern $02, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $e7	; Set frequency '3047' (octave 1 semitone 999) for channel FM 6
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ea	; Set frequency '3050' (octave 1 semitone 1002) for channel FM 6
; Pattern $02, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ed	; Set frequency '3053' (octave 1 semitone 1005) for channel FM 6
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $f0	; Set frequency '3056' (octave 1 semitone 1008) for channel FM 6
; Pattern $02, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $f3	; Set frequency '3059' (octave 1 semitone 1011) for channel FM 6
; Pattern $02, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $f6	; Set frequency '3062' (octave 1 semitone 1014) for channel FM 6
; Pattern $02, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $f9	; Set frequency '3065' (octave 1 semitone 1017) for channel FM 6
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $fc	; Set frequency '3068' (octave 1 semitone 1020) for channel FM 6
; Pattern $02, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $ff	; Set frequency '3071' (octave 1 semitone 1023) for channel FM 6
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $02	; Set frequency '3074' (octave 1 semitone 1026) for channel FM 6
; Pattern $02, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $05	; Set frequency '3077' (octave 1 semitone 1029) for channel FM 6
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $08	; Set frequency '3080' (octave 1 semitone 1032) for channel FM 6
; Pattern $02, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $0b	; Set frequency '3083' (octave 1 semitone 1035) for channel FM 6
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $0e	; Set frequency '3086' (octave 1 semitone 1038) for channel FM 6
; Pattern $02, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $11	; Set frequency '3089' (octave 1 semitone 1041) for channel FM 6
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $14	; Set frequency '3092' (octave 1 semitone 1044) for channel FM 6
; Pattern $02, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $17	; Set frequency '3095' (octave 1 semitone 1047) for channel FM 6
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1a	; Set frequency '3098' (octave 1 semitone 1050) for channel FM 6
; Pattern $02, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1d	; Set frequency '3101' (octave 1 semitone 1053) for channel FM 6
; Pattern $02, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $20	; Set frequency '3104' (octave 1 semitone 1056) for channel FM 6
; Pattern $02, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $23	; Set frequency '3107' (octave 1 semitone 1059) for channel FM 6
; Pattern $02, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $26	; Set frequency '3110' (octave 1 semitone 1062) for channel FM 6
; Pattern $02, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $29	; Set frequency '3113' (octave 1 semitone 1065) for channel FM 6
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $2c	; Set frequency '3116' (octave 1 semitone 1068) for channel FM 6
; Pattern $02, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $2f	; Set frequency '3119' (octave 1 semitone 1071) for channel FM 6
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $32	; Set frequency '3122' (octave 1 semitone 1074) for channel FM 6
; Pattern $02, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $35	; Set frequency '3125' (octave 1 semitone 1077) for channel FM 6
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $38	; Set frequency '3128' (octave 1 semitone 1080) for channel FM 6
; Pattern $02, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3b	; Set frequency '3131' (octave 1 semitone 1083) for channel FM 6
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
; Pattern $02, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $41	; Set frequency '3137' (octave 1 semitone 1089) for channel FM 6
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $44	; Set frequency '3140' (octave 1 semitone 1092) for channel FM 6
; Pattern $02, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $47	; Set frequency '3143' (octave 1 semitone 1095) for channel FM 6
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $4a	; Set frequency '3146' (octave 1 semitone 1098) for channel FM 6
; Pattern $02, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $4d	; Set frequency '3149' (octave 1 semitone 1101) for channel FM 6
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $50	; Set frequency '3152' (octave 1 semitone 1104) for channel FM 6
; Pattern $02, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $53	; Set frequency '3155' (octave 1 semitone 1107) for channel FM 6
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $56	; Set frequency '3158' (octave 1 semitone 1110) for channel FM 6
; Pattern $02, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $59	; Set frequency '3161' (octave 1 semitone 1113) for channel FM 6
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $5c	; Set frequency '3164' (octave 1 semitone 1116) for channel FM 6
; Pattern $02, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $5f	; Set frequency '3167' (octave 1 semitone 1119) for channel FM 6
; Pattern $02, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $62	; Set frequency '3170' (octave 1 semitone 1122) for channel FM 6
; Pattern $02, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $65	; Set frequency '3173' (octave 1 semitone 1125) for channel FM 6
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $68	; Set frequency '3176' (octave 1 semitone 1128) for channel FM 6
; Pattern $02, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $6b	; Set frequency '3179' (octave 1 semitone 1131) for channel FM 6
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $6e	; Set frequency '3182' (octave 1 semitone 1134) for channel FM 6
; Pattern $02, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $71	; Set frequency '3185' (octave 1 semitone 1137) for channel FM 6
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $74	; Set frequency '3188' (octave 1 semitone 1140) for channel FM 6
; Pattern $02, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $77	; Set frequency '3191' (octave 1 semitone 1143) for channel FM 6
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7a	; Set frequency '3194' (octave 1 semitone 1146) for channel FM 6
; Pattern $02, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7d	; Set frequency '3197' (octave 1 semitone 1149) for channel FM 6
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $80	; Set frequency '3200' (octave 1 semitone 1152) for channel FM 6
; Pattern $02, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $83	; Set frequency '3203' (octave 1 semitone 1155) for channel FM 6
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $86	; Set frequency '3206' (octave 1 semitone 1158) for channel FM 6
; Pattern $02, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $89	; Set frequency '3209' (octave 1 semitone 1161) for channel FM 6
; Pattern $02, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 6
; Pattern $02, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8f	; Set frequency '3215' (octave 1 semitone 1167) for channel FM 6
; Pattern $02, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 6
; Pattern $02, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $95	; Set frequency '3221' (octave 1 semitone 1173) for channel FM 6
; Pattern $02, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $98	; Set frequency '3224' (octave 1 semitone 1176) for channel FM 6
; Pattern $03, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 6
; Pattern $03, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a1	; Set frequency '3233' (octave 1 semitone 1185) for channel FM 6
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
; Pattern $03, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a7	; Set frequency '3239' (octave 1 semitone 1191) for channel FM 6
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $aa	; Set frequency '3242' (octave 1 semitone 1194) for channel FM 6
; Pattern $03, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ad	; Set frequency '3245' (octave 1 semitone 1197) for channel FM 6
; Pattern $03, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $03, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 6
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 6
; Pattern $03, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 6
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 6
; Pattern $03, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 6
; Pattern $03, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 6
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
; Pattern $03, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 6
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $93	; Set frequency '4755' (octave 2 semitone 659) for channel FM 6
; Pattern $03, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $99	; Set frequency '4761' (octave 2 semitone 665) for channel FM 6
; Pattern $03, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 6
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
; Pattern $03, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a2	; Set frequency '4770' (octave 2 semitone 674) for channel FM 6
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a5	; Set frequency '4773' (octave 2 semitone 677) for channel FM 6
; Pattern $03, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 6
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
; Pattern $03, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ae	; Set frequency '4782' (octave 2 semitone 686) for channel FM 6
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b1	; Set frequency '4785' (octave 2 semitone 689) for channel FM 6
; Pattern $03, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b4	; Set frequency '4788' (octave 2 semitone 692) for channel FM 6
; Pattern $03, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b7	; Set frequency '4791' (octave 2 semitone 695) for channel FM 6
; Pattern $03, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 6
; Pattern $03, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bd	; Set frequency '4797' (octave 2 semitone 701) for channel FM 6
; Pattern $03, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c3	; Set frequency '4803' (octave 2 semitone 707) for channel FM 6
; Pattern $03, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c6	; Set frequency '4806' (octave 2 semitone 710) for channel FM 6
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c9	; Set frequency '4809' (octave 2 semitone 713) for channel FM 6
; Pattern $03, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $cc	; Set frequency '4812' (octave 2 semitone 716) for channel FM 6
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $cf	; Set frequency '4815' (octave 2 semitone 719) for channel FM 6
; Pattern $03, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d2	; Set frequency '4818' (octave 2 semitone 722) for channel FM 6
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d5	; Set frequency '4821' (octave 2 semitone 725) for channel FM 6
; Pattern $03, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $d8	; Set frequency '4824' (octave 2 semitone 728) for channel FM 6
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $db	; Set frequency '4827' (octave 2 semitone 731) for channel FM 6
; Pattern $03, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e1	; Set frequency '4833' (octave 2 semitone 737) for channel FM 6
; Pattern $03, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e4	; Set frequency '4836' (octave 2 semitone 740) for channel FM 6
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $e7	; Set frequency '4839' (octave 2 semitone 743) for channel FM 6
; Pattern $03, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ea	; Set frequency '4842' (octave 2 semitone 746) for channel FM 6
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ed	; Set frequency '4845' (octave 2 semitone 749) for channel FM 6
; Pattern $03, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f0	; Set frequency '4848' (octave 2 semitone 752) for channel FM 6
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f3	; Set frequency '4851' (octave 2 semitone 755) for channel FM 6
; Pattern $03, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f6	; Set frequency '4854' (octave 2 semitone 758) for channel FM 6
; Pattern $03, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $f9	; Set frequency '4857' (octave 2 semitone 761) for channel FM 6
; Pattern $03, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $fc	; Set frequency '4860' (octave 2 semitone 764) for channel FM 6
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ff	; Set frequency '4863' (octave 2 semitone 767) for channel FM 6
; Pattern $03, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $02	; Set frequency '4866' (octave 2 semitone 770) for channel FM 6
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $05	; Set frequency '4869' (octave 2 semitone 773) for channel FM 6
; Pattern $03, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $08	; Set frequency '4872' (octave 2 semitone 776) for channel FM 6
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0b	; Set frequency '4875' (octave 2 semitone 779) for channel FM 6
; Pattern $03, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0e	; Set frequency '4878' (octave 2 semitone 782) for channel FM 6
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $11	; Set frequency '4881' (octave 2 semitone 785) for channel FM 6
; Pattern $03, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $14	; Set frequency '4884' (octave 2 semitone 788) for channel FM 6
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $17	; Set frequency '4887' (octave 2 semitone 791) for channel FM 6
; Pattern $03, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1a	; Set frequency '4890' (octave 2 semitone 794) for channel FM 6
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1d	; Set frequency '4893' (octave 2 semitone 797) for channel FM 6
; Pattern $03, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 6
; Pattern $03, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $23	; Set frequency '4899' (octave 2 semitone 803) for channel FM 6
; Pattern $03, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $26	; Set frequency '4902' (octave 2 semitone 806) for channel FM 6
; Pattern $03, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $29	; Set frequency '4905' (octave 2 semitone 809) for channel FM 6
; Pattern $03, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $2c	; Set frequency '4908' (octave 2 semitone 812) for channel FM 6
; Pattern $03, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $2f	; Set frequency '4911' (octave 2 semitone 815) for channel FM 6
; Pattern $04, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $32	; Set frequency '4914' (octave 2 semitone 818) for channel FM 6
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $35	; Set frequency '4917' (octave 2 semitone 821) for channel FM 6
; Pattern $04, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $38	; Set frequency '4920' (octave 2 semitone 824) for channel FM 6
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3b	; Set frequency '4923' (octave 2 semitone 827) for channel FM 6
; Pattern $04, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
; Pattern $04, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 6
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $47	; Set frequency '4935' (octave 2 semitone 839) for channel FM 6
; Pattern $04, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $4a	; Set frequency '4938' (octave 2 semitone 842) for channel FM 6
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $4d	; Set frequency '4941' (octave 2 semitone 845) for channel FM 6
; Pattern $04, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $50	; Set frequency '4944' (octave 2 semitone 848) for channel FM 6
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $53	; Set frequency '4947' (octave 2 semitone 851) for channel FM 6
; Pattern $04, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $56	; Set frequency '4950' (octave 2 semitone 854) for channel FM 6
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $59	; Set frequency '4953' (octave 2 semitone 857) for channel FM 6
; Pattern $04, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $5c	; Set frequency '4956' (octave 2 semitone 860) for channel FM 6
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $5f	; Set frequency '4959' (octave 2 semitone 863) for channel FM 6
; Pattern $04, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $62	; Set frequency '4962' (octave 2 semitone 866) for channel FM 6
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $65	; Set frequency '4965' (octave 2 semitone 869) for channel FM 6
; Pattern $04, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $68	; Set frequency '4968' (octave 2 semitone 872) for channel FM 6
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $6b	; Set frequency '4971' (octave 2 semitone 875) for channel FM 6
; Pattern $04, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $6e	; Set frequency '4974' (octave 2 semitone 878) for channel FM 6
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $71	; Set frequency '4977' (octave 2 semitone 881) for channel FM 6
; Pattern $04, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $74	; Set frequency '4980' (octave 2 semitone 884) for channel FM 6
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $77	; Set frequency '4983' (octave 2 semitone 887) for channel FM 6
; Pattern $04, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7a	; Set frequency '4986' (octave 2 semitone 890) for channel FM 6
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7d	; Set frequency '4989' (octave 2 semitone 893) for channel FM 6
; Pattern $04, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $80	; Set frequency '4992' (octave 2 semitone 896) for channel FM 6
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $83	; Set frequency '4995' (octave 2 semitone 899) for channel FM 6
; Pattern $04, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $86	; Set frequency '4998' (octave 2 semitone 902) for channel FM 6
; Pattern $04, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $89	; Set frequency '5001' (octave 2 semitone 905) for channel FM 6
; Pattern $04, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8c	; Set frequency '5004' (octave 2 semitone 908) for channel FM 6
; Pattern $04, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8f	; Set frequency '5007' (octave 2 semitone 911) for channel FM 6
; Pattern $04, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $92	; Set frequency '5010' (octave 2 semitone 914) for channel FM 6
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $95	; Set frequency '5013' (octave 2 semitone 917) for channel FM 6
; Pattern $04, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $98	; Set frequency '5016' (octave 2 semitone 920) for channel FM 6
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9b	; Set frequency '5019' (octave 2 semitone 923) for channel FM 6
; Pattern $04, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 6
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a1	; Set frequency '5025' (octave 2 semitone 929) for channel FM 6
; Pattern $04, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a4	; Set frequency '5028' (octave 2 semitone 932) for channel FM 6
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $a7	; Set frequency '5031' (octave 2 semitone 935) for channel FM 6
; Pattern $04, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $aa	; Set frequency '5034' (octave 2 semitone 938) for channel FM 6
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ad	; Set frequency '5037' (octave 2 semitone 941) for channel FM 6
; Pattern $04, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b0	; Set frequency '5040' (octave 2 semitone 944) for channel FM 6
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b3	; Set frequency '5043' (octave 2 semitone 947) for channel FM 6
; Pattern $04, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b6	; Set frequency '5046' (octave 2 semitone 950) for channel FM 6
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $b9	; Set frequency '5049' (octave 2 semitone 953) for channel FM 6
; Pattern $04, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bc	; Set frequency '5052' (octave 2 semitone 956) for channel FM 6
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
; Pattern $04, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 6
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 6
; Pattern $04, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 6
; Pattern $04, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $cb	; Set frequency '5067' (octave 2 semitone 971) for channel FM 6
; Pattern $04, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ce	; Set frequency '5070' (octave 2 semitone 974) for channel FM 6
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d1	; Set frequency '5073' (octave 2 semitone 977) for channel FM 6
; Pattern $04, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d4	; Set frequency '5076' (octave 2 semitone 980) for channel FM 6
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $d7	; Set frequency '5079' (octave 2 semitone 983) for channel FM 6
; Pattern $04, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $da	; Set frequency '5082' (octave 2 semitone 986) for channel FM 6
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $dd	; Set frequency '5085' (octave 2 semitone 989) for channel FM 6
; Pattern $04, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e0	; Set frequency '5088' (octave 2 semitone 992) for channel FM 6
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e3	; Set frequency '5091' (octave 2 semitone 995) for channel FM 6
; Pattern $04, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e6	; Set frequency '5094' (octave 2 semitone 998) for channel FM 6
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $e9	; Set frequency '5097' (octave 2 semitone 1001) for channel FM 6
; Pattern $04, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ec	; Set frequency '5100' (octave 2 semitone 1004) for channel FM 6
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $ef	; Set frequency '5103' (octave 2 semitone 1007) for channel FM 6
; Pattern $04, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f2	; Set frequency '5106' (octave 2 semitone 1010) for channel FM 6
; Pattern $04, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f5	; Set frequency '5109' (octave 2 semitone 1013) for channel FM 6
; Pattern $04, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $f8	; Set frequency '5112' (octave 2 semitone 1016) for channel FM 6
; Pattern $04, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fb	; Set frequency '5115' (octave 2 semitone 1019) for channel FM 6
; Pattern $04, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
; Pattern $04, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
; Pattern $05, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $04	; Set frequency '5124' (octave 2 semitone 1028) for channel FM 6
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $07	; Set frequency '5127' (octave 2 semitone 1031) for channel FM 6
; Pattern $05, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 6
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0d	; Set frequency '5133' (octave 2 semitone 1037) for channel FM 6
; Pattern $05, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $10	; Set frequency '5136' (octave 2 semitone 1040) for channel FM 6
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $05, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $16	; Set frequency '5142' (octave 2 semitone 1046) for channel FM 6
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $19	; Set frequency '5145' (octave 2 semitone 1049) for channel FM 6
; Pattern $05, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 6
; Pattern $05, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $22	; Set frequency '5154' (octave 2 semitone 1058) for channel FM 6
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $25	; Set frequency '5157' (octave 2 semitone 1061) for channel FM 6
; Pattern $05, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $28	; Set frequency '5160' (octave 2 semitone 1064) for channel FM 6
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $2b	; Set frequency '5163' (octave 2 semitone 1067) for channel FM 6
; Pattern $05, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $2e	; Set frequency '5166' (octave 2 semitone 1070) for channel FM 6
; Pattern $05, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $31	; Set frequency '5169' (octave 2 semitone 1073) for channel FM 6
; Pattern $05, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $34	; Set frequency '5172' (octave 2 semitone 1076) for channel FM 6
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 6
; Pattern $05, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3a	; Set frequency '5178' (octave 2 semitone 1082) for channel FM 6
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3d	; Set frequency '5181' (octave 2 semitone 1085) for channel FM 6
; Pattern $05, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $40	; Set frequency '5184' (octave 2 semitone 1088) for channel FM 6
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $43	; Set frequency '5187' (octave 2 semitone 1091) for channel FM 6
; Pattern $05, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $46	; Set frequency '5190' (octave 2 semitone 1094) for channel FM 6
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $49	; Set frequency '5193' (octave 2 semitone 1097) for channel FM 6
; Pattern $05, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $4c	; Set frequency '5196' (octave 2 semitone 1100) for channel FM 6
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $4f	; Set frequency '5199' (octave 2 semitone 1103) for channel FM 6
; Pattern $05, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $52	; Set frequency '5202' (octave 2 semitone 1106) for channel FM 6
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 6
; Pattern $05, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $58	; Set frequency '5208' (octave 2 semitone 1112) for channel FM 6
; Pattern $05, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5b	; Set frequency '5211' (octave 2 semitone 1115) for channel FM 6
; Pattern $05, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 6
; Pattern $05, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $61	; Set frequency '5217' (octave 2 semitone 1121) for channel FM 6
; Pattern $05, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $64	; Set frequency '5220' (octave 2 semitone 1124) for channel FM 6
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $67	; Set frequency '5223' (octave 2 semitone 1127) for channel FM 6
; Pattern $05, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $6a	; Set frequency '5226' (octave 2 semitone 1130) for channel FM 6
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $6d	; Set frequency '5229' (octave 2 semitone 1133) for channel FM 6
; Pattern $05, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $70	; Set frequency '5232' (octave 2 semitone 1136) for channel FM 6
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $73	; Set frequency '5235' (octave 2 semitone 1139) for channel FM 6
; Pattern $05, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $76	; Set frequency '5238' (octave 2 semitone 1142) for channel FM 6
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $79	; Set frequency '5241' (octave 2 semitone 1145) for channel FM 6
; Pattern $05, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $7c	; Set frequency '5244' (octave 2 semitone 1148) for channel FM 6
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $7f	; Set frequency '5247' (octave 2 semitone 1151) for channel FM 6
; Pattern $05, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $82	; Set frequency '5250' (octave 2 semitone 1154) for channel FM 6
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $85	; Set frequency '5253' (octave 2 semitone 1157) for channel FM 6
; Pattern $05, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $88	; Set frequency '5256' (octave 2 semitone 1160) for channel FM 6
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $8b	; Set frequency '5259' (octave 2 semitone 1163) for channel FM 6
; Pattern $05, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 6
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $91	; Set frequency '5265' (octave 2 semitone 1169) for channel FM 6
; Pattern $05, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $94	; Set frequency '5268' (octave 2 semitone 1172) for channel FM 6
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $97	; Set frequency '5271' (octave 2 semitone 1175) for channel FM 6
; Pattern $05, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9a	; Set frequency '5274' (octave 2 semitone 1178) for channel FM 6
; Pattern $05, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9d	; Set frequency '5277' (octave 2 semitone 1181) for channel FM 6
; Pattern $05, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a0	; Set frequency '5280' (octave 2 semitone 1184) for channel FM 6
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a3	; Set frequency '5283' (octave 2 semitone 1187) for channel FM 6
; Pattern $05, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a6	; Set frequency '5286' (octave 2 semitone 1190) for channel FM 6
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $a9	; Set frequency '5289' (octave 2 semitone 1193) for channel FM 6
; Pattern $05, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 6
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 6
; Pattern $05, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 6
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 6
; Pattern $05, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 6
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 6
; Pattern $05, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
; Pattern $05, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $87	; Set frequency '6791' (octave 3 semitone 647) for channel FM 6
; Pattern $05, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8a	; Set frequency '6794' (octave 3 semitone 650) for channel FM 6
; Pattern $05, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
; Pattern $05, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $90	; Set frequency '6800' (octave 3 semitone 656) for channel FM 6
; Pattern $05, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $93	; Set frequency '6803' (octave 3 semitone 659) for channel FM 6
; Pattern $05, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
; Pattern $06, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 6
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 6
; Pattern $06, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 6
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 6
; Pattern $06, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 6
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 6
; Pattern $06, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ab	; Set frequency '6827' (octave 3 semitone 683) for channel FM 6
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ae	; Set frequency '6830' (octave 3 semitone 686) for channel FM 6
; Pattern $06, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b1	; Set frequency '6833' (octave 3 semitone 689) for channel FM 6
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b4	; Set frequency '6836' (octave 3 semitone 692) for channel FM 6
; Pattern $06, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b7	; Set frequency '6839' (octave 3 semitone 695) for channel FM 6
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ba	; Set frequency '6842' (octave 3 semitone 698) for channel FM 6
; Pattern $06, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $bd	; Set frequency '6845' (octave 3 semitone 701) for channel FM 6
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 6
; Pattern $06, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 6
; Pattern $06, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 6
; Pattern $06, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 6
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 6
; Pattern $06, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 6
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d2	; Set frequency '6866' (octave 3 semitone 722) for channel FM 6
; Pattern $06, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 6
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d8	; Set frequency '6872' (octave 3 semitone 728) for channel FM 6
; Pattern $06, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $db	; Set frequency '6875' (octave 3 semitone 731) for channel FM 6
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 6
; Pattern $06, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e1	; Set frequency '6881' (octave 3 semitone 737) for channel FM 6
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 6
; Pattern $06, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $e7	; Set frequency '6887' (octave 3 semitone 743) for channel FM 6
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 6
; Pattern $06, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 6
; Pattern $06, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 6
; Pattern $06, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 6
; Pattern $06, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 6
; Pattern $06, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 6
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 6
; Pattern $06, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 6
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 6
; Pattern $06, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 6
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 6
; Pattern $06, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0b	; Set frequency '6923' (octave 3 semitone 779) for channel FM 6
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 6
; Pattern $06, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 6
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 6
; Pattern $06, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $17	; Set frequency '6935' (octave 3 semitone 791) for channel FM 6
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 6
; Pattern $06, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1d	; Set frequency '6941' (octave 3 semitone 797) for channel FM 6
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 6
; Pattern $06, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $23	; Set frequency '6947' (octave 3 semitone 803) for channel FM 6
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 6
; Pattern $06, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $29	; Set frequency '6953' (octave 3 semitone 809) for channel FM 6
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2c	; Set frequency '6956' (octave 3 semitone 812) for channel FM 6
; Pattern $06, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2f	; Set frequency '6959' (octave 3 semitone 815) for channel FM 6
; Pattern $06, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $32	; Set frequency '6962' (octave 3 semitone 818) for channel FM 6
; Pattern $06, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $35	; Set frequency '6965' (octave 3 semitone 821) for channel FM 6
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $38	; Set frequency '6968' (octave 3 semitone 824) for channel FM 6
; Pattern $06, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 6
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
; Pattern $06, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $41	; Set frequency '6977' (octave 3 semitone 833) for channel FM 6
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 6
; Pattern $06, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 6
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 6
; Pattern $06, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 6
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 6
; Pattern $06, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 6
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 6
; Pattern $06, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 6
; Pattern $06, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $5c	; Set frequency '7004' (octave 3 semitone 860) for channel FM 6
; Pattern $06, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $5f	; Set frequency '7007' (octave 3 semitone 863) for channel FM 6
; Pattern $06, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $62	; Set frequency '7010' (octave 3 semitone 866) for channel FM 6
; Pattern $06, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $65	; Set frequency '7013' (octave 3 semitone 869) for channel FM 6
; Pattern $06, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $68	; Set frequency '7016' (octave 3 semitone 872) for channel FM 6
; Pattern $07, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $6b	; Set frequency '7019' (octave 3 semitone 875) for channel FM 6
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $6e	; Set frequency '7022' (octave 3 semitone 878) for channel FM 6
; Pattern $07, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $71	; Set frequency '7025' (octave 3 semitone 881) for channel FM 6
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $74	; Set frequency '7028' (octave 3 semitone 884) for channel FM 6
; Pattern $07, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $77	; Set frequency '7031' (octave 3 semitone 887) for channel FM 6
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 6
; Pattern $07, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 6
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 6
; Pattern $07, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 6
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 6
; Pattern $07, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 6
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 6
; Pattern $07, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 6
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 6
; Pattern $07, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 6
; Pattern $07, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 6
; Pattern $07, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 6
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 6
; Pattern $07, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 6
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 6
; Pattern $07, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 6
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $aa	; Set frequency '7082' (octave 3 semitone 938) for channel FM 6
; Pattern $07, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 6
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 6
; Pattern $07, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 6
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 6
; Pattern $07, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 6
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 6
; Pattern $07, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 6
; Pattern $07, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 6
; Pattern $07, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 6
; Pattern $07, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 6
; Pattern $07, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 6
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 6
; Pattern $07, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d1	; Set frequency '7121' (octave 3 semitone 977) for channel FM 6
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 6
; Pattern $07, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 6
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 6
; Pattern $07, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 6
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e0	; Set frequency '7136' (octave 3 semitone 992) for channel FM 6
; Pattern $07, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e3	; Set frequency '7139' (octave 3 semitone 995) for channel FM 6
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 6
; Pattern $07, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 6
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 6
; Pattern $07, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 6
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 6
; Pattern $07, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 6
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 6
; Pattern $07, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 6
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 6
; Pattern $07, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
; Pattern $07, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 6
; Pattern $07, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $07	; Set frequency '7175' (octave 3 semitone 1031) for channel FM 6
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
; Pattern $07, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0d	; Set frequency '7181' (octave 3 semitone 1037) for channel FM 6
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 6
; Pattern $07, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 6
; Pattern $07, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $19	; Set frequency '7193' (octave 3 semitone 1049) for channel FM 6
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $1c	; Set frequency '7196' (octave 3 semitone 1052) for channel FM 6
; Pattern $07, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 6
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $22	; Set frequency '7202' (octave 3 semitone 1058) for channel FM 6
; Pattern $07, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $25	; Set frequency '7205' (octave 3 semitone 1061) for channel FM 6
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 6
; Pattern $07, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $2b	; Set frequency '7211' (octave 3 semitone 1067) for channel FM 6
; Pattern $07, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 6
; Pattern $07, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $31	; Set frequency '7217' (octave 3 semitone 1073) for channel FM 6
; Pattern $07, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $34	; Set frequency '7220' (octave 3 semitone 1076) for channel FM 6
; Pattern $07, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $37	; Set frequency '7223' (octave 3 semitone 1079) for channel FM 6
; Pattern $07, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3a	; Set frequency '7226' (octave 3 semitone 1082) for channel FM 6
; Pattern $08, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3d	; Set frequency '7229' (octave 3 semitone 1085) for channel FM 6
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $40	; Set frequency '7232' (octave 3 semitone 1088) for channel FM 6
; Pattern $08, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $43	; Set frequency '7235' (octave 3 semitone 1091) for channel FM 6
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $46	; Set frequency '7238' (octave 3 semitone 1094) for channel FM 6
; Pattern $08, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $49	; Set frequency '7241' (octave 3 semitone 1097) for channel FM 6
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 6
; Pattern $08, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $4f	; Set frequency '7247' (octave 3 semitone 1103) for channel FM 6
; Pattern $08, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $52	; Set frequency '7250' (octave 3 semitone 1106) for channel FM 6
; Pattern $08, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $55	; Set frequency '7253' (octave 3 semitone 1109) for channel FM 6
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 6
; Pattern $08, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5b	; Set frequency '7259' (octave 3 semitone 1115) for channel FM 6
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 6
; Pattern $08, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $61	; Set frequency '7265' (octave 3 semitone 1121) for channel FM 6
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 6
; Pattern $08, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $67	; Set frequency '7271' (octave 3 semitone 1127) for channel FM 6
; Pattern $08, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 6
; Pattern $08, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 6
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 6
; Pattern $08, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 6
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 6
; Pattern $08, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 6
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 6
; Pattern $08, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 6
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 6
; Pattern $08, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $85	; Set frequency '7301' (octave 3 semitone 1157) for channel FM 6
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 6
; Pattern $08, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8b	; Set frequency '7307' (octave 3 semitone 1163) for channel FM 6
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 6
; Pattern $08, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 6
; Pattern $08, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 6
; Pattern $08, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $97	; Set frequency '7319' (octave 3 semitone 1175) for channel FM 6
; Pattern $08, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 6
; Pattern $08, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9d	; Set frequency '7325' (octave 3 semitone 1181) for channel FM 6
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 6
; Pattern $08, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a3	; Set frequency '7331' (octave 3 semitone 1187) for channel FM 6
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 6
; Pattern $08, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a9	; Set frequency '7337' (octave 3 semitone 1193) for channel FM 6
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 6
; Pattern $08, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 6
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 6
; Pattern $08, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b5	; Set frequency '7349' (octave 3 semitone 1205) for channel FM 6
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 6
; Pattern $08, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bb	; Set frequency '7355' (octave 3 semitone 1211) for channel FM 6
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $08, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 6
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 6
; Pattern $08, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8a	; Set frequency '8842' (octave 4 semitone 650) for channel FM 6
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
; Pattern $08, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 6
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $93	; Set frequency '8851' (octave 4 semitone 659) for channel FM 6
; Pattern $08, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 6
; Pattern $08, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 6
; Pattern $08, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 6
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 6
; Pattern $08, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 6
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 6
; Pattern $08, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 6
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ab	; Set frequency '8875' (octave 4 semitone 683) for channel FM 6
; Pattern $08, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ae	; Set frequency '8878' (octave 4 semitone 686) for channel FM 6
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b1	; Set frequency '8881' (octave 4 semitone 689) for channel FM 6
; Pattern $08, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 6
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $b7	; Set frequency '8887' (octave 4 semitone 695) for channel FM 6
; Pattern $08, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $ba	; Set frequency '8890' (octave 4 semitone 698) for channel FM 6
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $bd	; Set frequency '8893' (octave 4 semitone 701) for channel FM 6
; Pattern $08, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 6
; Pattern $08, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c3	; Set frequency '8899' (octave 4 semitone 707) for channel FM 6
; Pattern $08, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 6
; Pattern $08, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c9	; Set frequency '8905' (octave 4 semitone 713) for channel FM 6
; Pattern $08, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 6
; Pattern $08, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $cf	; Set frequency '8911' (octave 4 semitone 719) for channel FM 6
	dc.b $ff	; The End

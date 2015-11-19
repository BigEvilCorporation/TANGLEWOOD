
; Use first sprite set as size template
tiles_fuzzl:

* --------------------------
	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998F19
	dc.l	0x5977EE19
	dc.l	0x6997AFF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x91FD7993
	dc.l	0x71FF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000

* --------------------------
tiles_fuzzl_end
tiles_fuzzl_size_b	equ (tiles_fuzzl_end-tiles_fuzzl)	; Size in bytes
tiles_fuzzl_size_w	equ (tiles_fuzzl_size_b/2)	; Size in words
tiles_fuzzl_size_l	equ (tiles_fuzzl_size_b/4)	; Size in longwords
tiles_fuzzl_size_t	equ (tiles_fuzzl_size_b/32)	; Size in tiles

sprite_fuzzl_dimensions: 		equ 0x0101	; 1x1 subsprites
sprite_fuzzl_size_subsprites:	equ 1		; Sprite size in 4x4 subsprites

; Remaining tiles

; 45 degrees
	dc.l	0x00000057
	dc.l	0x00000777
	dc.l	0x00669997
	dc.l	0x00699798
	dc.l	0x009977EF
	dc.l	0x09977AFE
	dc.l	0x59996EEF
	dc.l	0x997694C7

* --------------------------
	dc.l	0x99769577
	dc.l	0x47776456
	dc.l	0x07766554
	dc.l	0x00665544
	dc.l	0x00565433
	dc.l	0x00555333
	dc.l	0x00031434
	dc.l	0x00000014

* --------------------------
	dc.l	0x74000000
	dc.l	0x77735000
	dc.l	0x97796600
	dc.l	0xD7999660
	dc.l	0xFF999940
	dc.l	0x19999990
	dc.l	0x999D9994
	dc.l	0x971FF999

* --------------------------
	dc.l	0x7BFFD999
	dc.l	0x6FFF7796
	dc.l	0x4FE66990
	dc.l	0x45666930
	dc.l	0x44457550
	dc.l	0x44466600
	dc.l	0x44535000
	dc.l	0x43000000
	
; 90 degrees
	dc.l	0x00000066
	dc.l	0x00059999
	dc.l	0x00999999
	dc.l	0x04997977
	dc.l	0x0677966A
	dc.l	0x0777694E
	dc.l	0x5666657C
	dc.l	0x56665477

* --------------------------
	dc.l	0x56555567
	dc.l	0x35444456
	dc.l	0x1433344F
	dc.l	0x0433345E
	dc.l	0x01444446
	dc.l	0x00544455
	dc.l	0x00035567
	dc.l	0x00000356

* --------------------------
	dc.l	0x65000000
	dc.l	0x99775000
	dc.l	0x97977600
	dc.l	0x77977740
	dc.l	0xAE879770
	dc.l	0xFEFD7773
	dc.l	0xF11F9995
	dc.l	0x79999996

* --------------------------
	dc.l	0x97999996
	dc.l	0xB11D9996
	dc.l	0xFFFF9994
	dc.l	0xFFD79990
	dc.l	0x66799940
	dc.l	0x67999930
	dc.l	0x79996300
	dc.l	0x55300000

; 135 degrees
	dc.l	0x00000049
	dc.l	0x00000779
	dc.l	0x00556777
	dc.l	0x03566676
	dc.l	0x01555669
	dc.l	0x04345545
	dc.l	0x13334557
	dc.l	0x44334467

* --------------------------
	dc.l	0x44444469
	dc.l	0x34445FFB
	dc.l	0x05446FFF
	dc.l	0x036566FF
	dc.l	0x0567667D
	dc.l	0x00559979
	dc.l	0x00053999
	dc.l	0x00000069

* --------------------------
	dc.l	0x95000000
	dc.l	0x99900000
	dc.l	0x79996600
	dc.l	0x69799600
	dc.l	0x96779900
	dc.l	0x4EA77970
	dc.l	0xCFFE9975
	dc.l	0x7FEF8777

* --------------------------
	dc.l	0x991FD977
	dc.l	0x799F7774
	dc.l	0x19999770
	dc.l	0xFD999930
	dc.l	0xF9999650
	dc.l	0x99996600
	dc.l	0x99946000
	dc.l	0x94000000
	
; 180 degrees
	dc.l	0x00000135
	dc.l	0x00014456
	dc.l	0x00543345
	dc.l	0x03443345
	dc.l	0x05443345
	dc.l	0x35444445
	dc.l	0x56545456
	dc.l	0x6756EF67

* --------------------------
	dc.l	0x5766FFB9
	dc.l	0x5976FF17
	dc.l	0x3997DF19
	dc.l	0x09997FD9
	dc.l	0x06999999
	dc.l	0x03999999
	dc.l	0x00349999
	dc.l	0x00000466

* --------------------------
	dc.l	0x55000000
	dc.l	0x66764000
	dc.l	0x66779900
	dc.l	0x66779950
	dc.l	0x56697990
	dc.l	0x45969990
	dc.l	0x77467996
	dc.l	0x7CEA7996

* --------------------------
	dc.l	0x7FFA7996
	dc.l	0x91EE7795
	dc.l	0x91F89970
	dc.l	0x9FD77770
	dc.l	0x99797750
	dc.l	0x99777600
	dc.l	0x99774000
	dc.l	0x65300000
	
; 225 degrees
	dc.l	0x00000034
	dc.l	0x00053544
	dc.l	0x00566444
	dc.l	0x05575444
	dc.l	0x03966654
	dc.l	0x09966FF4
	dc.l	0x6977FFF6
	dc.l	0x999DFFB9

* --------------------------
	dc.l	0x999FF177
	dc.l	0x4999D999
	dc.l	0x09999991
	dc.l	0x049999FF
	dc.l	0x0669997D
	dc.l	0x00669779
	dc.l	0x00053777
	dc.l	0x00000047

* --------------------------
	dc.l	0x41000000
	dc.l	0x43413000
	dc.l	0x33355500
	dc.l	0x33456500
	dc.l	0x44566600
	dc.l	0x45566770
	dc.l	0x64467774
	dc.l	0x77596799

* --------------------------
	dc.l	0x7C496799
	dc.l	0xFFE69995
	dc.l	0xEFA77990
	dc.l	0xFE779900
	dc.l	0x89799600
	dc.l	0x79996600
	dc.l	0x77700000
	dc.l	0x75000000
	
; 270 degrees
	dc.l	0x00000355
	dc.l	0x00369997
	dc.l	0x03999976
	dc.l	0x04999766
	dc.l	0x09997DFF
	dc.l	0x4999FFFF
	dc.l	0x6999D11B
	dc.l	0x69999979

* --------------------------
	dc.l	0x69999997
	dc.l	0x5999F11F
	dc.l	0x3777DFEF
	dc.l	0x077978EA
	dc.l	0x04777977
	dc.l	0x00677979
	dc.l	0x00057799
	dc.l	0x00000056

* --------------------------
	dc.l	0x65300000
	dc.l	0x76553000
	dc.l	0x55444500
	dc.l	0x64444410
	dc.l	0xE5433340
	dc.l	0xF4433341
	dc.l	0x65444453
	dc.l	0x76555565

* --------------------------
	dc.l	0x77456665
	dc.l	0xC7566665
	dc.l	0xE4967770
	dc.l	0xA6697760
	dc.l	0x77979940
	dc.l	0x99999900
	dc.l	0x99995000
	dc.l	0x66000000
	
; 315 degrees
	dc.l	0x00000049
	dc.l	0x00064999
	dc.l	0x00669999
	dc.l	0x0569999F
	dc.l	0x039999DF
	dc.l	0x07799991
	dc.l	0x4777F997
	dc.l	0x779DF197

* --------------------------
	dc.l	0x7778FEF7
	dc.l	0x5799EFEC
	dc.l	0x07977AE4
	dc.l	0x00997769
	dc.l	0x00699796
	dc.l	0x00669997
	dc.l	0x00000999
	dc.l	0x00000059

* --------------------------
	dc.l	0x96000000
	dc.l	0x99935000
	dc.l	0x97995600
	dc.l	0xD7667650
	dc.l	0xFF665630
	dc.l	0xFFE64450
	dc.l	0xBFF54443
	dc.l	0x76444444

* --------------------------
	dc.l	0x76443344
	dc.l	0x74543331
	dc.l	0x54554340
	dc.l	0x96665510
	dc.l	0x67666530
	dc.l	0x77765500
	dc.l	0x97700000
	dc.l	0x94000000
	
; Eyes 0 degrees

* --------------------------
	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x077771F9
	dc.l	0x07998DF9
	dc.l	0x5977EEF9
	dc.l	0x6997AEF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9D179990
	dc.l	0x9DDD7993
	dc.l	0x7FFF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000


; eyes 45 degrees

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998F19
	dc.l	0x5977EEF9
	dc.l	0x6997AFF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FF17993
	dc.l	0x7FFF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000

	; eyes 90 degrees
	
		dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998FF9
	dc.l	0x5977EE19
	dc.l	0x6997AFF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FFD7993
	dc.l	0x7FF16795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000
	
; eyes 135 degrees

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998FF9
	dc.l	0x5977EEF9
	dc.l	0x6997AF17

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FFD7993
	dc.l	0x7FFF6795
	dc.l	0x9BF16675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000
	
; eyes 180 degrees

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998FF9
	dc.l	0x5977EEF9
	dc.l	0x6997AEF7

* --------------------------
	dc.l	0x6997A1C7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FFD7993
	dc.l	0x7FFF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x761E6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000
	
; eyes 225 degrees

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998FF9
	dc.l	0x5977EEF9
	dc.l	0x69971EF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FFD7993
	dc.l	0x7FFF6795
	dc.l	0x91FF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000
	
; eyes 270 degrees

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998FF9
	dc.l	0x59771EF9
	dc.l	0x6997AEF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FFD7993
	dc.l	0x71FF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000
	
; eyes 315 degrees

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07991FF9
	dc.l	0x5977EEF9
	dc.l	0x6997AEF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x91FD7993
	dc.l	0x7FFF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000

; Eyes crossed

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777DF9
	dc.l	0x07998FF9
	dc.l	0x5977EE19
	dc.l	0x6997AEF7

* --------------------------
	dc.l	0x6997AEC7
	dc.l	0x69976477
	dc.l	0x09996954
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x9DF79990
	dc.l	0x9FFD7993
	dc.l	0x71FF6795
	dc.l	0x9BFF6675

* --------------------------
	dc.l	0x76FE6576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000

; Sleep 0

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07794449
	dc.l	0x07946779
	dc.l	0x59799779
	dc.l	0x69977777

* --------------------------
	dc.l	0x69977767
	dc.l	0x69977777
	dc.l	0x09996977
	dc.l	0x09979767
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x94447990
	dc.l	0x77764993
	dc.l	0x97777795
	dc.l	0x97776675

* --------------------------
	dc.l	0x76776576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000

; Sleep 1

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779799
	dc.l	0x07777999
	dc.l	0x07994449
	dc.l	0x59746779
	dc.l	0x69977777

* --------------------------
	dc.l	0x69977767
	dc.l	0x69977777
	dc.l	0x09997977
	dc.l	0x09979765
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x99979990
	dc.l	0x94447993
	dc.l	0x77764795
	dc.l	0x97776675

* --------------------------
	dc.l	0x76776576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000

; Sleep 2

	dc.l	0x00000356
	dc.l	0x00047799
	dc.l	0x00677799
	dc.l	0x05779796
	dc.l	0x07777779
	dc.l	0x07979977
	dc.l	0x59794449
	dc.l	0x69946779

* --------------------------
	dc.l	0x69977767
	dc.l	0x69977777
	dc.l	0x09996977
	dc.l	0x09979665
	dc.l	0x05997766
	dc.l	0x00997766
	dc.l	0x00046766
	dc.l	0x00000055

* --------------------------
	dc.l	0x66400000
	dc.l	0x99994300
	dc.l	0x99999930
	dc.l	0x99999960
	dc.l	0x96777990
	dc.l	0x77777993
	dc.l	0x94447795
	dc.l	0x77764675

* --------------------------
	dc.l	0x76776576
	dc.l	0x65454565
	dc.l	0x54444453
	dc.l	0x54334450
	dc.l	0x54334430
	dc.l	0x54334500
	dc.l	0x65441000
	dc.l	0x53100000
	
; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped (bb)
sprite_fuzzl_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000	; Top-left     (2x2)
	even

; Subsprite dimension bits (for sprite descs)
sprite_fuzzl_subsprite_dimensions_bits:
	dc.b (%00000101)	; Top-left     (2x2)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_fuzzl_numtiles_per_subsprite:
	dc.b 0x4	; Top-left
	even

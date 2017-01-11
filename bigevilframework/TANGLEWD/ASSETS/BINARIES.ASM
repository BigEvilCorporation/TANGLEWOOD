;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	IFD DEBUG

	; ************************************
	; Test maps
	; ************************************
tiles_tst1:
	incbin 'assets\tiles\til_tst1.bin'
collisiontiles_tst1:
	incbin 'assets\collisn\ctl_tst1.bin'
map_tst1:
	incbin 'assets\maps\map_tst1.bin'
collisionmap_tst1:
	incbin 'assets\collisn\cmp_tst1.bin'

	ELSE

	; ************************************
	; Tilesets
	; ************************************
tiles_bigevil_logo:
	incbin 'assets\tiles\bec_logo.bin'
tiles_ks_logo:
	incbin 'assets\tiles\ks_logo.bin'
tiles_controls_screen:
	incbin 'assets\tiles\controls.bin'
tiles_demodisclaimer_screen:
	incbin 'assets\tiles\disclmr.bin'
tiles_demoend_screen:
	incbin 'assets\tiles\demoend.bin'
tiles_soundtest:
	incbin 'assets\tiles\soundtst.bin'
tiles_twd_logo:
	incbin 'assets\tiles\twd_logo.bin'
tiles_lvl1:
	incbin 'assets\tiles\til_lvl1.bin'

tiles_l1:
	incbin 'assets\tiles\l1.bin'
	
	IFND FINAL
tiles_tst_lift:
	incbin 'assets\tiles\tst_lift.bin'
	ENDIF

	; ************************************
	; Collision tilesets
	; ************************************
collisiontiles_lvl1:
	incbin 'assets\collisn\ctl_lvl1.bin'

collisiontiles_l1:
	incbin 'assets\collisn\tiles\l1.bin'
	
	IFND FINAL
collisiontiles_tst_lift:
	incbin 'assets\collisn\ctl_lift.bin'
	ENDIF

	; ************************************
	; Maps
	; ************************************
map_bigevil_logo:
	incbin 'assets\maps\bec_logo.bin'
map_ks_logo:
	incbin 'assets\maps\ks_logo.bin'
map_controls_screen:
	incbin 'assets\maps\controls.bin'
map_demodisclaimer_screen:
	incbin 'assets\maps\disclmr.bin'
map_demoend_screen:
	incbin 'assets\maps\demoend.bin'
map_soundtest:
	incbin 'assets\maps\soundtst.bin'
map_twd_logo:
	incbin 'assets\maps\twd_logo.bin'
map_lvl1:
	incbin 'assets\maps\map_lvl1.bin'
map_lvl2:
	incbin 'assets\maps\map_lvl2.bin'
map_lvl3:
	incbin 'assets\maps\map_lvl3.bin'
map_lvl1_bg:
	incbin 'assets\maps\lvl1_bg.bin'

map_l1a1:
	incbin 'assets\maps\l1a1.bin'
map_l1bg:
	incbin 'assets\maps\l1bg.bin'
	
	IFND FINAL
map_tst_lift:
	incbin 'assets\maps\tst_lift.bin'
	ENDIF

	; ************************************
	; Collision maps
	; ************************************
collisionmap_lvl1:
	incbin 'assets\collisn\cmp_lvl1.bin'
collisionmap_lvl2:
	incbin 'assets\collisn\cmp_lvl2.bin'
collisionmap_lvl3:
	incbin 'assets\collisn\cmp_lvl3.bin'

collisionmap_l1a1:
	incbin 'assets\collisn\maps\l1a1.bin'
	
	IFND FINAL
collisionmap_tst_lift:
	incbin 'assets\collisn\cmp_lift.bin'
	ENDIF

	ENDIF

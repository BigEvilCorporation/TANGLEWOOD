;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	IFD DEBUG

	; ************************************
	; Test maps
	; ************************************
tiles_bigevil_logo:
	incbin 'assets\tiles\bec_logo.bin'
tiles_tanglewood_logo:
	incbin 'assets\tiles\twd_logo.bin'
tiles_tst1:
	incbin 'assets\tiles\til_tst1.bin'
collisiontiles_tst1:
	incbin 'assets\collisn\ctl_tst1.bin'
map_bigevil_logo:
	incbin 'assets\maps\bec_logo.bin'
map_tanglewood_logo:
	incbin 'assets\maps\twd_logo.bin'
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
tiles_tanglewood_logo:
	incbin 'assets\tiles\twd_logo.bin'
tiles_lvl1:
	incbin 'assets\tiles\til_lvl1.bin'

	; ************************************
	; Collision tilesets
	; ************************************
collisiontiles_lvl1:
	incbin 'assets\collisn\ctl_lvl1.bin'

	; ************************************
	; Maps
	; ************************************
map_bigevil_logo:
	incbin 'assets\maps\bec_logo.bin'
map_tanglewood_logo:
	incbin 'assets\maps\twd_logo.bin'
map_lvl1:
	incbin 'assets\maps\map_lvl1.bin'

	; ************************************
	; Collision maps
	; ************************************
collisionmap_lvl1:
	incbin 'assets\collisn\cmp_lvl1.bin'

	ENDIF

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
; tiles_lvl2:
	;incbin 'assets\tiles\til_lvl2.bin'

	; ************************************
	; Collision tilesets
	; ************************************
collisiontiles_lvl1:
	incbin 'assets\collisn\ctl_lvl1.bin'
; collisiontiles_lvl2:
	;incbin 'assets\collisn\ctl_lvl2.bin'

	; ************************************
	; Maps
	; ************************************
map_bigevil_logo:
	incbin 'assets\maps\bec_logo.bin'
map_tanglewood_logo:
	incbin 'assets\maps\twd_logo.bin'
map_lvl1:
	incbin 'assets\maps\map_lvl1.bin'
map_lvl1_bg:
	incbin 'assets\maps\lvl1_bg.bin'
; map_lvl2:
	;incbin 'assets\maps\map_lvl2.bin'

	; ************************************
	; Collision maps
	; ************************************
collisionmap_lvl1:
	incbin 'assets\collisn\cmp_lvl1.bin'
collisionmap_lvl2:
	;incbin 'assets\collisn\cmp_lvl2.bin'

	ENDIF

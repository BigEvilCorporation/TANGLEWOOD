	IFND DEBUG

bgm_titles:
	include 'assets\audio\music\titles.asm'

bgm_lvlintro:
	include 'assets\audio\music\lvlintro.asm'
	
bgm_lvloutro:
	include 'assets\audio\music\lvloutro.asm'

bgm_dawn:
	include 'assets\audio\music\dawn.asm'

bgm_dusk:
	include 'assets\audio\music\dusk.asm'

bgm_night:
	include 'assets\audio\music\night.asm'
	
bgm_boss1:
	include 'assets\audio\music\boss_l.asm'

bgm_monsterbass:
	dc.b 0xFF ;incbin 'assets\audio\music\lowbass.esf'
	even
	
	ENDIF
	
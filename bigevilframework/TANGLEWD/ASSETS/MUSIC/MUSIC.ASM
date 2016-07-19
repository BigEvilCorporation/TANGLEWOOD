bgm_titles:
	include 'assets\music\tracks\titles.asm'
	
bgm_lvlintro:
	include 'assets\music\tracks\lvlintro.asm'
	
bgm_lvloutro:
	include 'assets\music\tracks\lvloutro.asm'

bgm_monsterbass:
	dc.b 0xFF ;incbin 'assets\music\tracks\lowbass.esf'
	even
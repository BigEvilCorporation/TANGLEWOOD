Anim_MonsterIdle:
	dc.b 0x0
Anim_MonsterIdle_End
Anim_MonsterIdle_SizeB: equ (Anim_MonsterIdle_End-Anim_MonsterIdle)
Anim_MonsterIdle_Speed: equ 0x0

Anim_MonsterBite:
	dc.b 0x1, 0x0
Anim_MonsterBite_End
Anim_MonsterBite_SizeB: equ (Anim_MonsterBite_End-Anim_MonsterBite)
Anim_MonsterBite_Speed: equ 0x4

	Even

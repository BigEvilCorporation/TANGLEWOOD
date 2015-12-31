Anim_MonsterIdle:
	dc.b 0x0
Anim_MonsterIdle_End
Anim_MonsterIdle_SizeB: equ (Anim_MonsterIdle_End-Anim_MonsterIdle)
Anim_MonsterIdle_Speed: equ 0x0

Anim_MonsterWalk:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
Anim_MonsterWalk_End
Anim_MonsterWalk_SizeB: equ (Anim_MonsterWalk_End-Anim_MonsterWalk)
Anim_MonsterWalk_Speed: equ 0x20

Anim_MonsterBite:
	dc.b 0x1, 0x8
Anim_MonsterBite_End
Anim_MonsterBite_SizeB: equ (Anim_MonsterBite_End-Anim_MonsterBite)
Anim_MonsterBite_Speed: equ 0x4

	Even

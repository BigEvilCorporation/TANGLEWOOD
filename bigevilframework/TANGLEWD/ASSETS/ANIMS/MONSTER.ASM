Anim_MonsterEyes:
	dc.b 0x0
Anim_MonsterEyes_End
Anim_MonsterEyes_SizeB: equ (Anim_MonsterEyes_End-Anim_MonsterEyes)
Anim_MonsterEyes_Speed: equ 0x0

	Even

Anim_MonsterIdle:
	dc.b 0x1
Anim_MonsterIdle_End
Anim_MonsterIdle_SizeB: equ (Anim_MonsterIdle_End-Anim_MonsterIdle)
Anim_MonsterIdle_Speed: equ 0x1

	Even
	
Anim_MonsterDead:
	dc.b 0xA
Anim_MonsterDead_End
Anim_MonsterDead_SizeB: equ (Anim_MonsterDead_End-Anim_MonsterDead)
Anim_MonsterDead_Speed: equ 0x1

	Even

	IFD DEBUG
	
Anim_MonsterWalk:
	dc.b 0x1
Anim_MonsterWalk_End
Anim_MonsterWalk_SizeB: equ (Anim_MonsterWalk_End-Anim_MonsterWalk)
Anim_MonsterWalk_Speed: equ 0x1

	Even

Anim_MonsterRun:
	dc.b 0x1
Anim_MonsterRun_End
Anim_MonsterRun_SizeB: equ (Anim_MonsterRun_End-Anim_MonsterRun)
Anim_MonsterRun_Speed: equ 0x1

	Even

Anim_MonsterBite:
	dc.b 0x1, 0x1, 0x1
Anim_MonsterBite_End
Anim_MonsterBite_SizeB: equ (Anim_MonsterBite_End-Anim_MonsterBite)
Anim_MonsterBite_Speed: equ 0x19

	Even

	ELSE
	
Anim_MonsterWalk:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
Anim_MonsterWalk_End
Anim_MonsterWalk_SizeB: equ (Anim_MonsterWalk_End-Anim_MonsterWalk)
Anim_MonsterWalk_Speed: equ 0x20

	Even

Anim_MonsterRun:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
Anim_MonsterRun_End
Anim_MonsterRun_SizeB: equ (Anim_MonsterRun_End-Anim_MonsterRun)
Anim_MonsterRun_Speed: equ 0x30

	Even

Anim_MonsterBite:
	dc.b 0x1, 0x9, 0x1
Anim_MonsterBite_End
Anim_MonsterBite_SizeB: equ (Anim_MonsterBite_End-Anim_MonsterBite)
Anim_MonsterBite_Speed: equ 0x18

	Even
	
	ENDIF
	
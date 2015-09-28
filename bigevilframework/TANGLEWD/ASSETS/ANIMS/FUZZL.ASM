Anim_FuzzlIdle:
	dc.b 0x0
Anim_FuzzlIdle_End
Anim_FuzzlIdle_SizeB: equ (Anim_FuzzlIdle_End-Anim_FuzzlIdle)
Anim_FuzzlIdle_Speed: equ 0x0

	Even

Anim_FuzzlBounce:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
Anim_FuzzlBounce_End
Anim_FuzzlBounce_SizeB: equ (Anim_FuzzlBounce_End-Anim_FuzzlBounce)
Anim_FuzzlBounce_Speed: equ 0x18

	Even
	
Anim_FuzzlRoll:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
Anim_FuzzlRoll_End
Anim_FuzzlRoll_SizeB: equ (Anim_FuzzlRoll_End-Anim_FuzzlRoll)
Anim_FuzzlRoll_Speed: equ 0x18

	Even
	
Anim_FuzzlEyes:
	dc.b 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10
Anim_FuzzlEyes_End
Anim_FuzzlEyes_SizeB: equ (Anim_FuzzlEyes_End-Anim_FuzzlEyes)
Anim_FuzzlEyes_Speed: equ 0x0

	Even

Anim_FuzzlSleep:
	dc.b 0x11, 0x12, 0x13, 0x13, 0x13, 0x13, 0x13, 0x13, 0x12, 0x11, 0x11, 0x11
Anim_FuzzlSleep_End
Anim_FuzzlSleep_SizeB: equ (Anim_FuzzlSleep_End-Anim_FuzzlSleep)
Anim_FuzzlSleep_Speed: equ 0x8

	Even